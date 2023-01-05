//Define name tables
const String ticketTable = "ticket"; //Tickets
const String stageTable = "stage"; //Estados
const String symptomTable = "symptom"; //Sintomas
const String shrimpsFarmTable = "shrimpsFarm"; //Camaroneras
const String swimmingPoolTable = "swimmingPool"; //Piscinas
const String deviceTable = "device"; //Dispositivos

List get tables => [
      _createTable(
          stageTable,
          "id INTEGER,"
          "name TEXT,"
          "sequence INTEGER,"
          "CONSTRAINT id_unique UNIQUE (id)"),
      _createTable(
          symptomTable,
          "id INTEGER,"
          "name TEXT,"
          "code TEXT,"
          "CONSTRAINT id_unique UNIQUE (id)"),
      _createTable(
          shrimpsFarmTable,
          "id INTEGER,"
          "name TEXT,"
          "num_swimming_pool INTEGER,"
          "CONSTRAINT id_unique UNIQUE (id)"),
      _createTable(
          swimmingPoolTable,
          "id INTEGER,"
          "name TEXT,"
          "shrimps_farm_id INTEGER,"
          "shrimps_farm_name TEXT,"
          "CONSTRAINT id_unique UNIQUE (id)"),
      _createTable(
          deviceTable,
          "id INTEGER,"
          "name TEXT,"
          "external_id INTEGER,"
          "shrimps_farm_id INTEGER,"
          "shrimps_farm_name TEXT,"
          "swimming_pool_id INTEGER,"
          "swimming_pool_name TEXT,"
          "CONSTRAINT id_unique UNIQUE (id)"),
      _createTable(
          ticketTable,
          "unique_id INTEGER PRIMARY KEY,"
          "id INTEGER,"
          "name TEXT,"
          "device_id TEXT,"
          "device_name TEXT,"
          "origin TEXT,"
          "symptom_id INTEGER,"
          "symptom_name TEXT,"
          "user_id INTEGER,"
          "username TEXT,"
          "comment TEXT,"
          "stage_id INTEGER,"
          "stage_name TEXT,"
          "shrimps_farm_id INTEGER,"
          "shrimps_farm_name TEXT,"
          "swimming_pool_id INTEGER,"
          "swimming_pool_name TEXT,"
          "synchronization TEXT,"
          "create_date TEXT"),
    ];

_createTable(String table, String columns) {
  return "CREATE TABLE IF NOT EXISTS $table ($columns)";
}
