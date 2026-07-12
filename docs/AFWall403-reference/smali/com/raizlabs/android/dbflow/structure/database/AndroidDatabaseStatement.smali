.class public Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;
.super Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;
.source "AndroidDatabaseStatement.java"


# instance fields
.field private final database:Landroid/database/sqlite/SQLiteDatabase;

.field private final statement:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static from(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;
    .locals 1

    .line 18
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;-><init>(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    .line 108
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    .line 103
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    .line 98
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    .line 93
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    .line 88
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    .line 67
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-void
.end method

.method public execute()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    .line 62
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public executeInsert()J
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    .line 83
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public executeUpdateDelete()J
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    .line 39
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStatement()Landroid/database/sqlite/SQLiteStatement;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public simpleQueryForLong()J
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    .line 72
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/AndroidDatabaseStatement;->statement:Landroid/database/sqlite/SQLiteStatement;

    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
