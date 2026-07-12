.class public final Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;
.super Lcom/raizlabs/android/dbflow/config/DatabaseHolder;
.source "GeneratedDatabaseHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseHolder;-><init>()V

    .line 24
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lcom/raizlabs/android/dbflow/converter/BooleanConverter;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/converter/BooleanConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Lcom/raizlabs/android/dbflow/converter/CharConverter;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/converter/CharConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Lcom/raizlabs/android/dbflow/converter/BigDecimalConverter;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/converter/BigDecimalConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Lcom/raizlabs/android/dbflow/converter/BigIntegerConverter;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/converter/BigIntegerConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/sql/Date;

    new-instance v2, Lcom/raizlabs/android/dbflow/converter/SqlDateConverter;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/converter/SqlDateConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/sql/Time;

    new-instance v2, Lcom/raizlabs/android/dbflow/converter/SqlDateConverter;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/converter/SqlDateConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/sql/Timestamp;

    new-instance v2, Lcom/raizlabs/android/dbflow/converter/SqlDateConverter;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/converter/SqlDateConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/util/Calendar;

    new-instance v2, Lcom/raizlabs/android/dbflow/converter/CalendarConverter;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/converter/CalendarConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/util/GregorianCalendar;

    new-instance v2, Lcom/raizlabs/android/dbflow/converter/CalendarConverter;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/converter/CalendarConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/raizlabs/android/dbflow/converter/DateConverter;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/converter/DateConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/util/UUID;

    new-instance v2, Lcom/raizlabs/android/dbflow/converter/UUIDConverter;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/converter/UUIDConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/raizlabs/android/dbflow/config/CustomRuleDatabaseCustomRuleDatabase_Database;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/CustomRuleDatabaseCustomRuleDatabase_Database;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V

    .line 36
    new-instance v0, Lcom/raizlabs/android/dbflow/config/DefaultConnectionPrefDBDefaultConnectionPrefDB_Database;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/DefaultConnectionPrefDBDefaultConnectionPrefDB_Database;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V

    .line 37
    new-instance v0, Lcom/raizlabs/android/dbflow/config/LogDatabaseLogDatabase_Database;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/LogDatabaseLogDatabase_Database;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V

    .line 38
    new-instance v0, Lcom/raizlabs/android/dbflow/config/LogPreferenceDBLogPreferenceDB_Database;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/LogPreferenceDBLogPreferenceDB_Database;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V

    .line 39
    new-instance v0, Lcom/raizlabs/android/dbflow/config/ProfilesDatabaseProfilesDatabase_Database;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/ProfilesDatabaseProfilesDatabase_Database;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V

    return-void
.end method
