.class public Ldev/ukanth/ufirewall/log/LogDatabase$Migration2;
.super Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;
.source "LogDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/log/LogDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Migration2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration<",
        "Ldev/ukanth/ufirewall/log/LogData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onPreMigrate()V
    .locals 2

    .line 29
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->TEXT:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const-string v1, "hostname"

    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/log/LogDatabase$Migration2;->addColumn(Lcom/raizlabs/android/dbflow/sql/SQLiteType;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;

    .line 30
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const-string v1, "type"

    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/log/LogDatabase$Migration2;->addColumn(Lcom/raizlabs/android/dbflow/sql/SQLiteType;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;

    return-void
.end method
