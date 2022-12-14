import re

from bs4 import Tag


def sections_by_tag(tag_name: str, tags: list[Tag]):
	"""Split a list of page elements (tags) into sections, with each `tag_name` defining a new section."""
	output = []
	i = 0
	while i < len(tags):
		section_tags = [tags[i]]
		while i + 1 < len(tags):
			tag = tags[i + 1]
			# noinspection PyUnresolvedReferences
			if tag.name != tag_name:
				section_tags.append(tag)
				i += 1
			else:
				break
		output.append(section_tags)
		i += 1
	return output


def tags_to_desc(tags: list[Tag]):
	return " ".join(str(tag).replace("\n", "") for tag in tags if tag.name != "pre")


def desc_to_comment(desc: str):
	return "--- " + "\n--- ".join(desc.split("\n"))


def find_tags(name: str, tags: list[Tag], start: int = 0):
	results = []
	for i in range(start, len(tags)):
		if tags[i].name == name:
			results.append(tags[i])
	return results


# Shh, this is the most hacky thing ever...
# It got worse so, just, keep eyes away...
RETURN_TYPE_CLEAN_RE = re.compile(r"//.*?\n|/\*.*/\*|(?:,\s*(?!\.\.\.\s*[{\[]))?\.\.\.|,(?=[\s\n\r]*[}\]])")
JS_KEY_TO_JSON_RE = re.compile(r"((?:\w+)|(?:\[[\w.]+]))\s*:")
JS_VALUE_CONST_TO_JSON_RE = re.compile(r"(?<=: )([A-Z_]+)")
JS_EXPORT_TO_STR = re.compile(r"(?<!\[)(exports\.[\w.]+)")
JS_DECIMAL_TO_STR = re.compile(r"(?<!0)(\.\d+)")
JS_MATH_EVAL = re.compile(r"(\d+[+*\-/\s]+[\d+*\-/\s]+)")
JS_MATH_LEAD_ZERO = re.compile(r"0+(\d+)")
def js_type_code_to_json(text: str):
	text = text.replace("'", "\"").replace("undefined", "null")
	text = RETURN_TYPE_CLEAN_RE.sub("", text)
	text = JS_KEY_TO_JSON_RE.sub("\"\\1\":", text)
	text = JS_VALUE_CONST_TO_JSON_RE.sub("\"\\1\"", text)
	text = JS_DECIMAL_TO_STR.sub("0\\1", text)
	text = JS_MATH_LEAD_ZERO.sub("\\1", text)
	text = JS_MATH_EVAL.sub(lambda m: str(eval(m.group().strip())), text)  # Yes, `eval` is evil, but it's "fine".
	text = JS_EXPORT_TO_STR.sub("\"\\1\"", text)
	return text


def parse_table(tag: Tag) -> list[dict[str, Tag]]:
	assert tag.name == "table"
	values = []
	head = tag.find("thead")
	props = [th.text for th in head.find_all("th", recursive=True)]
	body = tag.find("tbody")
	for tr in body.find_all("tr"):
		tds = tr.find_all("td")
		data = {}
		for i in range(len(props)):
			data[props[i]] = tds[i]
		values.append(data)
	return values
