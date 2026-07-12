.class public Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;
.super Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;
.source "DatabaseHelperDelegate.java"


# static fields
.field public static final TEMP_DB_NAME:Ljava/lang/String; = "temp-"


# instance fields
.field private final backupHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

.field private databaseHelperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;)V
    .locals 0

    .line 39
    invoke-direct {p0, p2}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->databaseHelperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    iput-object p3, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->backupHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getTempDbFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;Ljava/io/File;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->writeDB(Ljava/io/File;Ljava/io/InputStream;)V

    return-void
.end method

.method private getTempDbFileName()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getTempDbFileName(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempDbFileName(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "temp-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeDB(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 224
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 225
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 229
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 230
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void
.end method


# virtual methods
.method public backupDB()V
    .locals 3

    .line 275
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->backupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->areConsistencyChecksEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate$1;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate$1;-><init>(Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;)V

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    return-void

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Backups are not enabled for : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Please consider adding both backupEnabled and consistency checks enabled to the Database annotation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->isDatabaseIntegrityOk(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result v0

    return v0
.end method

.method public isDatabaseIntegrityOk(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 4

    const-string v0, "PRAGMA integrity_check on "

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "PRAGMA quick_check(1)"

    .line 168
    invoke-interface {p1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v1

    .line 169
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ok"

    .line 170
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    sget-object v2, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {v2, p1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->backupEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->restoreBackUp()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 183
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 185
    :cond_3
    throw p1
.end method

.method public movePrepackagedDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 114
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->areConsistencyChecksEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->areConsistencyChecksEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->isDatabaseIntegrityOk(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 129
    :try_start_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getTempDbFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->backupEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->backupEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->backupHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    if-eqz v1, :cond_3

    .line 133
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;->getDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->isDatabaseIntegrityOk(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    :cond_2
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 136
    :cond_3
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 138
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->writeDB(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 141
    sget-object p2, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v0, "Failed to open file"

    invoke-static {p2, v0, p1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onCreate(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->databaseHelperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;->onCreate(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->onCreate(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public onDowngrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->databaseHelperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;->onDowngrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->onDowngrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V

    return-void
.end method

.method public onOpen(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->databaseHelperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;->onOpen(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->onOpen(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public onUpgrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->databaseHelperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;->onUpgrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V

    .line 79
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->onUpgrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V

    return-void
.end method

.method public performRestoreFromBackup()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseFileName()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseFileName()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->movePrepackagedDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->backupEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->backupHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getTempDbFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->restoreDatabase(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->backupHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    .line 54
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;->getDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the passed backup helper was null, even though backup is enabled. Ensure that its passed in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public restoreBackUp()Z
    .locals 3

    .line 196
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->writeDB(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->logError(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1

    .line 206
    :cond_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->E:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v1, "Failed to delete DB"

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public restoreDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 241
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 254
    :try_start_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getDatabaseDefinition()Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->backupEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->backupHelper:Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;

    if-eqz v1, :cond_1

    .line 258
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;->getDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->isDatabaseIntegrityOk(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 263
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->writeDB(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 265
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->logError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setDatabaseHelperListener(Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->databaseHelperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    return-void
.end method
