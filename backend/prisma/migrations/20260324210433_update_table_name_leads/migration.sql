/*
  Warnings:

  - You are about to drop the `lead` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `lead` DROP FOREIGN KEY `Lead_userId_fkey`;

-- DropTable
DROP TABLE `lead`;

-- CreateTable
CREATE TABLE `Leads` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `phoneNo` INTEGER NOT NULL,
    `userId` INTEGER NOT NULL,
    `status` ENUM('NEW', 'CONTACTED', 'CONVERTED') NOT NULL DEFAULT 'NEW',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Leads` ADD CONSTRAINT `Leads_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
