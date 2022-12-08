-- CreateTable
CREATE TABLE `peserta_pemilihan` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nis` INTEGER NOT NULL,
    `nama` VARCHAR(100) NOT NULL,
    `kelas` VARCHAR(30) NOT NULL,
    `isVoted` BOOLEAN NOT NULL DEFAULT false,
    `voteNo` INTEGER NOT NULL,

    UNIQUE INDEX `peserta_pemilihan_nis_key`(`nis`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `kandidat_ketua` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nis` INTEGER NOT NULL,
    `nama` VARCHAR(100) NOT NULL,
    `kelas` VARCHAR(30) NOT NULL,
    `noUrut` INTEGER NOT NULL,

    UNIQUE INDEX `kandidat_ketua_nis_key`(`nis`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `kandidat_wakil` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nis` INTEGER NOT NULL,
    `nama` VARCHAR(100) NOT NULL,
    `kelas` VARCHAR(30) NOT NULL,
    `kandidat_ketuaId` INTEGER NOT NULL,

    UNIQUE INDEX `kandidat_wakil_nis_key`(`nis`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `kandidat_wakil` ADD CONSTRAINT `kandidat_wakil_kandidat_ketuaId_fkey` FOREIGN KEY (`kandidat_ketuaId`) REFERENCES `kandidat_ketua`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
