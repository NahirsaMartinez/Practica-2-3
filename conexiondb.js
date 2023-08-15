import { createPool } from "mysql2/promise";

const pool = createPool({
    host: "localhost",
    port: 3306,
    user:"root",
    password: "iyGOLDENh0r@",
    database: "videojuegos",
});

async function agregarJuego(nombre,anio_lanzamiento,genero,nota,desarrollador) {
    let resultadoCrear = await pool.query(`INSERT INTO perfil_juegos (nombre,anio_lanzamiento,genero,nota,desarrollador)
VALUES (?,?,?,?,?);` , [nombre,anio_lanzamiento,genero,nota,desarrollador]);
    console.log(resultadoCrear);
}

async function resultadoTabla() {
    let resultadoObtenerInfo = await pool.query("SELECT * FROM perfil_juegos");
    console.table(resultadoObtenerInfo[0]);
}

async function actualizarInfo(id_registro,nombre) {
    let resultadoActualizar = await pool.query(`UPDATE perfil_juegos SET nombre= ?
WHERE id_registro= ?;`,[nombre,id_registro]);
    console.log(resultadoActualizar);
}

async function eliminarRegistro(id_registro) {
    let resultadoEliminar = await pool.query("DELETE FROM perfil_juegos WHERE id_registro= ?;" ,[id_registro]);
    console.log(resultadoEliminar);
}


await resultadoTabla();

/* Registros agregados total:
await agregarJuego("God Of War",2005, "Fantasia", 9.4, "SCE Santa Monica");
await agregarJuego("Nier:Automata",2017,"Accion,RPG",8.8,"PlatinumGames");
await agregarJuego("Detroid:Become Human",2018,"Aventura",7.8,"Quantic Dream");
await agregarJuego("Spyro: Reignited Trilogy",2018,"Aventura,Plataformas",8.2,"Activision");

Registros actualizados:

await actualizarInfo(2,"Resident Evil 4 Remake");
await actualizarInfo(1,"Persona 5 Royal");

Registros Eliminados:

await eliminarRegistro(4);
await eliminarRegistro(9);
*/








pool.end();