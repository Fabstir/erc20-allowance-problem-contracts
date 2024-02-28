const hre = require("hardhat");

async function main() {
  const FactoryMyToken = await hre.ethers.getContractFactory(
    "FactoryMyTokenUpgradeable"
  );
  const factory = await FactoryMyToken.deploy();

  await factory.deployed();

  console.log(
    "NEXT_PUBLIC_FNFTFACTORY_MYTOKEN_ADDRESS_UPGRADEABLE=",
    factory.address
  );
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
