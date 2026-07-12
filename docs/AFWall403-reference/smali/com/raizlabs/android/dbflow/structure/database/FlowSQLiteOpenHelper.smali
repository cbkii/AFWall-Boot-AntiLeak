.class public Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FlowSQLiteOpenHelper.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;
    }
.end annotation


# instance fields
.field private androidDatabase:Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

.field private databaseHelperDelegate:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;)V
    .locals 9

    .line 23
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->isInMemory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseFileName()Ljava/lang/String;

    move-result-object v1

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseVersion()I

    move-result v3

    .line 23
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->backupEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v2, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;

    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 30
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->getTempDbFileName(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getDatabaseVersion()I

    move-result v7

    move-object v3, v2

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;-><init>(Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;ILcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    .line 34
    :cond_1
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;

    invoke-direct {v0, p2, p1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;-><init>(Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->databaseHelperDelegate:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;

    return-void
.end method


# virtual methods
.method public backupDB()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->databaseHelperDelegate:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;

    .line 55
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->backupDB()V

    return-void
.end method

.method public closeDB()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->getDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->androidDatabase:Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    .line 100
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->androidDatabase:Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->androidDatabase:Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    :cond_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->androidDatabase:Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    return-object v0
.end method

.method public getDelegate()Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->databaseHelperDelegate:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;

    return-object v0
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->databaseHelperDelegate:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;

    .line 50
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->isDatabaseIntegrityOk()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->databaseHelperDelegate:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;

    .line 79
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->onCreate(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->databaseHelperDelegate:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;

    .line 94
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->onDowngrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->databaseHelperDelegate:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;

    .line 89
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->onOpen(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->databaseHelperDelegate:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;

    .line 84
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->onUpgrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V

    return-void
.end method

.method public performRestoreFromBackup()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->databaseHelperDelegate:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;

    .line 39
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->performRestoreFromBackup()V

    return-void
.end method

.method public setDatabaseListener(Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;->databaseHelperDelegate:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;

    .line 74
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;->setDatabaseHelperListener(Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;)V

    return-void
.end method
