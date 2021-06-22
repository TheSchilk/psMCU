
def comma_seperated_list(text_list: []):
    result = ""

    for i, text in enumerate(text_list):
        if i != 0:
            result += ", "
        result += str(text)

    return result
