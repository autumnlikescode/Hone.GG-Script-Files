---
title: Hone.GG Script Files
created: '2023-08-31T03:03:57.033Z'
modified: '2023-08-31T03:24:03.181Z'
---

# Hone.GG Script Files 

Welcome to the repository for the optimization scripts related to the Hone.gg optimizer! This repository houses the essential script files that are provided for analysis and exploration purposes.

# About This Repository
This repository serves as a central location for accessing the optimization script files associated with the Hone.gg optimizer. While this is not an official repository maintained by the Hone.gg team, it offers interested individuals the opportunity to examine the scripts and gain insights into how the optimizer works. This repository does not include and will not include any premium features of Hone, it will only contain the free to use optimizations.

# Analysis Steps
The analysis of the **Hone.gg** optimizer involved the following generalized steps:

1. Decompile App.asar File: The initial step involved decompiling the App.asar file, which contains the compiled source code and assets of the application. This step was necessary to access the source code for further analysis.

2. Deobfuscate the Obfuscation: The application's code was obfuscated to deter reverse engineering. Deobfuscating the code was crucial to uncover the original structure and logic of the application.

3. Identify Methods and Strings: Once the deobfuscated code was available, the next step was to identify important methods, functions, and strings that play a key role in the optimizer's functionality. The various script strings were saved in two consts `_0x27b6cc` for system optimizations and `_0x13094d` for game optimizations

4. Manual Cleaning and Renaming: The identified methods and strings were manually cleaned and annotated to make the code more comprehensible. Removing unnecessary clutter and renaming variables aided in improving readability. For example, the _0x34475f function was cleaned and renamed to executePowerShellScript to enhance clarity. Feel free to view the functions below.

## The Scripts Contents
The actual scripts were stored in the two consts variables and they had been encrypted multiple types, with encryption such as base64 and salting. The strings can be decrypted through a process which will not be included in this due to security reasons.

## Original Deobfuscated, renamed Function:
```js
      function _0x34475f(_0x2c1f00, _0x464a16) {
        return new Promise((_0x47d814, _0x1535ae) => {
          0x0;
          const _0x1b99c0 = _0x2f8b9a().join(_0x867235.tmpdir(), "script.ps1");
          0x0;
          _0x30801c.writeFile(_0x1b99c0, _0x2c1f00, async _0x4e6efd => {
            if (_0x4e6efd) {
              return void _0x1535ae("Error creating temporary PowerShell file: " + _0x4e6efd);
            }
            const _0x21837d = await _0xadf612("powershell -ExecutionPolicy Unrestricted -File \"" + _0x1b99c0 + "\"" + (_0x464a16 ? " " + _0x464a16 : ''));
            0x0;
            await _0x30801c.unlink(_0x1b99c0, _0x101ea4 => {
              if (_0x101ea4) {
                console.error("Error deleting temporary PowerShell file: " + _0x101ea4);
              }
            });
            _0x47d814(_0x21837d);
          });
        });
      }
```

## Manually Cleaned Function:
```js
function executePowerShellScript(scriptContent, arguments) {
  return new Promise((resolve, reject) => {
    const tmpFilePath = path.join(os.tmpdir(), "script.ps1");

    fs.writeFile(tmpFilePath, scriptContent, async (writeError) => {
      if (writeError) {
        return void reject("Error creating temporary PowerShell file: " + writeError);
      }

      const command = `powershell -ExecutionPolicy Unrestricted -File "${tmpFilePath}"${arguments ? " " + arguments : ''}`;
      const result = await executeShellCommand(command);

      await fs.unlink(tmpFilePath, (unlinkError) => {
        if (unlinkError) {
          console.error("Error deleting temporary PowerShell file: " + unlinkError);
        }
      });

      resolve(result);
    });
  });
}
```

# Repository Contents
Inside this repository, you'll find:
* Hone.GG Free Optimization Scripts

# Contributing
If you're interested in contributing to the analysis by providing additional insights, clarifications, or improvements, feel free to open issues or submit pull requests.

# License
This repository is licensed under the [MIT License](https://opensource.org/licenses/MIT). Refer to the LICENSE file for more details.

# Links
* [Hone.GG](https://hone.gg/)
