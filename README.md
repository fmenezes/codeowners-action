# Codeowners Lint docker action

This action lints CODEOWNERS file.

## Inputs

### `dir`

The path to the directory it should run.

### `token`

The token to be used.

## Example usage

```
uses: fmenezes/codeowners-action@v2
with:
  dir: './path/to/code/'
  token: ${{ secrets.MY_TOKEN }}
```
