-- DropForeignKey
ALTER TABLE `ingredient` DROP FOREIGN KEY `Ingredient_productId_fkey`;

-- DropForeignKey
ALTER TABLE `menucategory` DROP FOREIGN KEY `MenuCategory_restaurantId_fkey`;

-- DropForeignKey
ALTER TABLE `order` DROP FOREIGN KEY `Order_restaurantId_fkey`;

-- DropForeignKey
ALTER TABLE `orderproduct` DROP FOREIGN KEY `OrderProduct_orderId_fkey`;

-- DropForeignKey
ALTER TABLE `orderproduct` DROP FOREIGN KEY `OrderProduct_productId_fkey`;

-- DropForeignKey
ALTER TABLE `product` DROP FOREIGN KEY `Product_menuCategoryId_fkey`;

-- DropForeignKey
ALTER TABLE `product` DROP FOREIGN KEY `Product_restaurantId_fkey`;

-- DropIndex
DROP INDEX `Ingredient_productId_fkey` ON `ingredient`;

-- DropIndex
DROP INDEX `MenuCategory_restaurantId_fkey` ON `menucategory`;

-- DropIndex
DROP INDEX `Order_restaurantId_fkey` ON `order`;

-- DropIndex
DROP INDEX `OrderProduct_orderId_fkey` ON `orderproduct`;

-- DropIndex
DROP INDEX `OrderProduct_productId_fkey` ON `orderproduct`;

-- DropIndex
DROP INDEX `Product_menuCategoryId_fkey` ON `product`;

-- DropIndex
DROP INDEX `Product_restaurantId_fkey` ON `product`;

-- AddForeignKey
ALTER TABLE `MenuCategory` ADD CONSTRAINT `MenuCategory_restaurantId_fkey` FOREIGN KEY (`restaurantId`) REFERENCES `Restaurant`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Product` ADD CONSTRAINT `Product_restaurantId_fkey` FOREIGN KEY (`restaurantId`) REFERENCES `Restaurant`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Product` ADD CONSTRAINT `Product_menuCategoryId_fkey` FOREIGN KEY (`menuCategoryId`) REFERENCES `MenuCategory`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Ingredient` ADD CONSTRAINT `Ingredient_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Order` ADD CONSTRAINT `Order_restaurantId_fkey` FOREIGN KEY (`restaurantId`) REFERENCES `Restaurant`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `OrderProduct` ADD CONSTRAINT `OrderProduct_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `OrderProduct` ADD CONSTRAINT `OrderProduct_orderId_fkey` FOREIGN KEY (`orderId`) REFERENCES `Order`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
