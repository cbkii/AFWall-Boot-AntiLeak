.class public Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;
.super Ljava/lang/Object;
.source "BaseDatabaseHelper.java"


# static fields
.field public static final MIGRATION_PATH:Ljava/lang/String; = "migrations"


# instance fields
.field private final databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    return-void
.end method

.method private executeSqlScript(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;)V
    .locals 8

    const-string v0, "migrations/"

    .line 198
    :try_start_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ";"

    const-string v2, "--"

    .line 207
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 210
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 212
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 216
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v6, " "

    .line 218
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_0

    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 221
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 227
    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 230
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to execute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected checkForeignKeySupport(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 72
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->isForeignKeysSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PRAGMA foreign_keys=ON;"

    .line 73
    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 74
    sget-object p1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->I:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v0, "Foreign Keys supported. Enabling foreign key features."

    invoke-static {p1, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected executeMigrations(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V
    .locals 7

    const-string v0, "migrations/"

    .line 128
    :try_start_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 129
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/raizlabs/android/dbflow/config/NaturalOrderComparator;

    invoke-direct {v1}, Lcom/raizlabs/android/dbflow/config/NaturalOrderComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, ".sql"

    const-string v4, ""

    .line 135
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 136
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    .line 138
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 143
    :try_start_2
    sget-object v4, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping invalidly named file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 147
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getMigrations()Ljava/util/Map;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 p2, p2, 0x1

    .line 152
    :try_start_3
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->beginTransaction()V

    :goto_1
    if-gt p2, p3, :cond_4

    .line 156
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, " executed successfully."

    if-eqz v2, :cond_2

    .line 158
    :try_start_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 159
    invoke-direct {p0, p1, v4}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->executeSqlScript(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;)V

    .line 160
    sget-object v5, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->I:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    goto :goto_2

    .line 164
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 166
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/raizlabs/android/dbflow/sql/migration/Migration;

    .line 168
    invoke-interface {v4}, Lcom/raizlabs/android/dbflow/sql/migration/Migration;->onPreMigrate()V

    .line 171
    invoke-interface {v4, p1}, Lcom/raizlabs/android/dbflow/sql/migration/Migration;->migrate(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    .line 174
    invoke-interface {v4}, Lcom/raizlabs/android/dbflow/sql/migration/Migration;->onPostMigrate()V

    .line 175
    sget-object v5, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->I:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 179
    :cond_4
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    :try_start_5
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->endTransaction()V

    goto :goto_4

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->endTransaction()V

    .line 182
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    .line 184
    sget-object p2, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string p3, "Failed to execute migrations."

    invoke-static {p2, p3, p1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method protected executeTableCreations(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 3

    .line 80
    :try_start_0
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->beginTransaction()V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 81
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getModelAdapters()Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 83
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->createWithDatabase()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 85
    :try_start_1
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCreationQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 87
    :try_start_2
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->endTransaction()V

    .line 94
    throw v0
.end method

.method protected executeViewCreations(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 4

    .line 103
    :try_start_0
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->beginTransaction()V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 104
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getModelViewAdapters()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;

    .line 106
    new-instance v2, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    const-string v3, "CREATE VIEW IF NOT EXISTS"

    .line 107
    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v2

    .line 108
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;->getViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v2

    const-string v3, "AS "

    .line 109
    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v2

    .line 110
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/ModelViewAdapter;->getCreationQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 114
    :try_start_2
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->endTransaction()V

    .line 120
    throw v0
.end method

.method public getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    return-object v0
.end method

.method public onCreate(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->checkForeignKeySupport(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->executeTableCreations(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    const/4 v0, -0x1

    .line 49
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->getVersion()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->executeMigrations(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->executeViewCreations(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public onDowngrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->checkForeignKeySupport(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public onOpen(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->checkForeignKeySupport(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public onUpgrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->checkForeignKeySupport(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->executeTableCreations(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->executeMigrations(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->executeViewCreations(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method
