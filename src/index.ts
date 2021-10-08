import fs from 'fs-extra';
import dotenv from 'dotenv';
import path from 'path';
dotenv.config();

const pathFoldersDatapacks = {
	editor: path.join(__dirname, "..", "Animation Engine Editor"),
	runtime: path.join(__dirname, "..", "Animation Engine Runtime"),
};

(async () => {
	console.log("Start of generating files for project");

	const VERSION = process.env.BUILD_VERSION ?? "DEVELOPMENT";
	const VERSION_COLOR = process.env.BUILD_COLOR ?? "5";
	console.log(`Version: ${VERSION}`);
	for (const key in pathFoldersDatapacks) {
		if (Object.prototype.hasOwnProperty.call(pathFoldersDatapacks, key)) {
			const pathFolder = (pathFoldersDatapacks as any)[key] as string;
			await fs.writeFile(path.join(pathFolder, "pack.mcmeta"), JSON.stringify({
				pack: {
					pack_format: 7,
					description: `§bAnimation Engine ${key.charAt(0).toUpperCase() + key.slice(1)} §${VERSION_COLOR}${VERSION}\n§7©2021 vanjmali`
				}
			}, null, 4));
			await fs.copyFile(path.join(__dirname, "..", "pack.png"), path.join(pathFolder, "pack.png"));
		}
	}

	console.log("Generating files completed");
})();
