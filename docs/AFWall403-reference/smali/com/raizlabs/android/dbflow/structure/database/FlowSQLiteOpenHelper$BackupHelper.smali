.class Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FlowSQLiteOpenHelper.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/OpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHelper"
.end annotation


# instance fields
.field private androidDatabase:Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

.field private final baseDatabaseHelper:Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;

.field final synthetic this$0:Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;ILcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;->this$0:Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper;

    const/4 p1, 0x0

    .line 112
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 113
    new-instance p1, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;

    invoke-direct {p1, p5}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;->baseDatabaseHelper:Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;

    return-void
.end method


# virtual methods
.method public backupDB()V
    .locals 0

    return-void
.end method

.method public closeDB()V
    .locals 0

    return-void
.end method

.method public getDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;->androidDatabase:Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;->androidDatabase:Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;->androidDatabase:Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    return-object v0
.end method

.method public getDelegate()Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperDelegate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;->baseDatabaseHelper:Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;

    .line 150
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->onCreate(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;->baseDatabaseHelper:Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;

    .line 165
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->onDowngrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;->baseDatabaseHelper:Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;

    .line 160
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->onOpen(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowSQLiteOpenHelper$BackupHelper;->baseDatabaseHelper:Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;

    .line 155
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseHelper;->onUpgrade(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;II)V

    return-void
.end method

.method public performRestoreFromBackup()V
    .locals 0

    return-void
.end method

.method public setDatabaseListener(Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;)V
    .locals 0

    return-void
.end method
