import { PrismaClient } from "../../generated/prisma";

const prismaClient = new PrismaClient;

export default async () => {
    await prismaClient.$transaction([
        prismaClient.request.deleteMany()
    ])
}