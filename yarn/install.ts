#!/usr/bin/env ts-node

import * as fs from 'fs';
import { resolve } from 'path';
import { spawnSync } from 'child_process';

const packageJson = getJson('./yarn/global.package.json');
const verbose = hasArgument(['--verbose', '-v']);

console.log('Globalling installing node packages')
for (const packageName in packageJson.dependencies) {
  const item = `${packageName}@${packageJson.dependencies[packageName]}`;
  console.log(`Installing ${item}`);
  const output = spawnSync('yarn', ['global', 'add', item]);
  if (output.status !== 0 || verbose) { console.log(output.stdout.toString()); }
}

function getJson(filePath) {
  const json = fs.readFileSync(resolve(filePath), 'utf-8'); 
  return JSON.parse(json);
}

function hasArgument(options) {
  return options.some((option) => process.argv.some((argument) => option === argument));
}
