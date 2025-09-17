/*
  Warnings:

  - You are about to drop the column `adminId` on the `Admin` table. All the data in the column will be lost.
  - Added the required column `adminMajorId` to the `Admin` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Admin" DROP CONSTRAINT "Admin_adminId_fkey";

-- AlterTable
ALTER TABLE "Admin" DROP COLUMN "adminId",
ADD COLUMN     "adminMajorId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Admin" ADD CONSTRAINT "Admin_adminMajorId_fkey" FOREIGN KEY ("adminMajorId") REFERENCES "Major"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
