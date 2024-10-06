# DRE-GPO-Install
Optimized script for installing Dameware Remote Everywhere with GPO

# Dameware Remote Everywhere Agent Script

This batch script is designed to automatically install and uninstall the **Dameware Remote Everywhere Agent** on Windows computers, if there is a problem with the solarwinds installation. The script first checks if the agent is already installed on the system. If it is, the script exits. If the agent is not found, it proceeds to uninstall any existing version and then installs the latest version from the specified network path.

## How It Works

The script performs the following steps:

1. **Installation Check:** The script initially checks if the `BASupSrvcCnfg.exe` for the Dameware Remote Everywhere Agent exists in the default directory.
2. **Uninstallation of Existing Agent:** If the agent is found, the script ends. If not, it continues to remove any existing Dameware directory.
3. **New Agent Installation:** Finally, the script installs the new version of the Dameware Remote Everywhere Agent using an `.msi` file located at a specified network path.

## Prerequisites

- A Windows computer with administrator rights.
- The `DamewareAgent.msi` file must be available on a network drive (e.g., `\\yourdomain\NETLOGON\DRE_Agent\DamewareAgent.msi`).
- Ensure that the network path and file name are correct.

## Customizing the Script

Adjust the following parts of the script to fit your environment:

- **Path to the MSI file:** Update `\\yourdomain\NETLOGON\DRE_Agent\DamewareAgent.msi` to the actual network path of your `DamewareAgent.msi`.
- **Installation Directory:** If the Dameware Remote Everywhere Agent is installed in a different location, modify the `%DamewareAgentPFAD%` variable accordingly.

## Usage

1. Copy the script into a `.bat` file.
2. Ensure that you are connected to the network and that the path to the MSI file is accessible.
3. Run the script as an administrator to ensure all permissions are granted for installation.
4. The script will uninstall any existing version and install the latest version.
