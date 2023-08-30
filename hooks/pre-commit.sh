        _gitDiffTmp="${TMP_DIR}/${RANDOM}.${RANDOM}.${RANDOM}.diff.txt"
            # Check for stopwords
            if git diff --cached -- "${1}" | grep -q "new file mode"; then
                if grep -q --file="${TMP_DIR}/pattern_file.txt" "${1}"; then
                    return 1
                else
                    return 0
                fi
                # Add diff to a temporary file
                git diff --cached -- "${1}" | grep '^+' >"${_gitDiffTmp}"
                if grep --file="${TMP_DIR}/pattern_file.txt" "${_gitDiffTmp}"; then
                    return 1
                else
                    return 0
                fi

