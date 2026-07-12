.class public Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;
.super Ljava/lang/Object;
.source "AndroidDatabase.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;


# instance fields
.field private final database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;
    .locals 1

    .line 15
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->from(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 101
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public endTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    return v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 80
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 8

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 96
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p1

    return-object p1
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p1

    return-object p1
.end method

.method public setTransactionSuccessful()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)J
    .locals 6

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabase;->database:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 69
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
