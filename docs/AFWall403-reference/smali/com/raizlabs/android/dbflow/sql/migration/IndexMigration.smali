.class public abstract Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;
.super Lcom/raizlabs/android/dbflow/sql/migration/BaseMigration;
.source "IndexMigration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/migration/BaseMigration;"
    }
.end annotation


# instance fields
.field private index:Lcom/raizlabs/android/dbflow/sql/language/Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/Index<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private onTable:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/migration/BaseMigration;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->onTable:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public addColumn(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration<",
            "TTModel;>;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->getIndex()Lcom/raizlabs/android/dbflow/sql/language/Index;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Index;->and(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Index;

    return-object p0
.end method

.method public getIndex()Lcom/raizlabs/android/dbflow/sql/language/Index;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Index<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->index:Lcom/raizlabs/android/dbflow/sql/language/Index;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Index;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Index;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->onTable:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Index;->on(Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->index:Lcom/raizlabs/android/dbflow/sql/language/Index;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->index:Lcom/raizlabs/android/dbflow/sql/language/Index;

    return-object v0
.end method

.method public getIndexQuery()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->getIndex()Lcom/raizlabs/android/dbflow/sql/language/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/Index;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public final migrate(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->getIndex()Lcom/raizlabs/android/dbflow/sql/language/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/Index;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onPostMigrate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->onTable:Ljava/lang/Class;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->index:Lcom/raizlabs/android/dbflow/sql/language/Index;

    return-void
.end method

.method public onPreMigrate()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->getIndex()Lcom/raizlabs/android/dbflow/sql/language/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->index:Lcom/raizlabs/android/dbflow/sql/language/Index;

    return-void
.end method

.method public unique()Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration<",
            "TTModel;>;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/IndexMigration;->getIndex()Lcom/raizlabs/android/dbflow/sql/language/Index;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Index;->unique(Z)Lcom/raizlabs/android/dbflow/sql/language/Index;

    return-object p0
.end method
