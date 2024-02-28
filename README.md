# erc20-allowance-problem-contracts

copy `.env-template` to `.env`
then fill in the values for variables in `.env` file

Then run command

```
npx hardhat run scripts/deploy.js --network mumbai
```

Then copy the whole line for output of `NEXT_PUBLIC_FNFTFACTORY_MYTOKEN_ADDRESS` and paste that into the `.env` file of `erc20-allowance-problem` project.
