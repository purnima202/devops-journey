
const request = require("supertest");
const app = require("./server");

describe("Node.js Application Tests", () => {

    test("Home route should return welcome message", async () => {
        const response = await request(app).get("/");

        expect(response.statusCode).toBe(200);
        expect(response.text).toBe(
            "Hello! Jenkins CI/CD Pipeline is working!"
        );
    });

    test("Health route should return UP status", async () => {
        const response = await request(app).get("/health");

        expect(response.statusCode).toBe(200);
        expect(response.body.status).toBe("UP");
    });

    test("Invalid route should return 404", async () => {
        const response = await request(app).get("/invalid");

        expect(response.statusCode).toBe(404);
    });

});