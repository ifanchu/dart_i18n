# dart_i18n

This package provides a lightweight and convenient mechanism
for string localizations using simple yaml files. 

# How this works

1. Create a directory specifically for localizatoin yaml files, eg. `<root>/i18n/`

2. Create the first yaml file for your primary language, eg. `<root>/i18n/en.yaml`

3. Upon your program starts, let `dart_i18n` know where your localization files 
are located, given relative path to `root`.

```
dart_i18n.setDefaultLocaliztion('i18n/en.yaml')
```
Here `dart_i18n` will take `i18n` as the directory that contains all the localization
files and use `en.yaml` as current file.

4. While you're writing code and need to use a string that may need localization, 
add it to the yaml file in hierarchy. For example, 

Your code says:
```
print('hello.world'.localized);
```

You put into `en.yaml`
```
hello:
  world: Hello World!
```

What if you have variable in the string? For example

Your code says:
```
print('hello.you'.localize(['James']));
```

The `en.yaml` goes:
```
hello:
  world: Hello World! {}
```

# Notes

## Why use yaml over json?
Because yaml can have comments.
