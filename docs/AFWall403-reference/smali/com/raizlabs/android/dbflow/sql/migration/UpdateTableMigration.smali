.class public Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;
.super Lcom/raizlabs/android/dbflow/sql/migration/BaseMigration;
.source "UpdateTableMigration.java"


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
.field private setOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

.field private final table:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private whereOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;


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

    .line 42
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/migration/BaseMigration;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->table:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getUpdateStatement()Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->table:Ljava/lang/Class;

    .line 87
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->update(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/Update;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->setOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 88
    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/Update;->set([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Set;

    move-result-object v0

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->whereOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    aput-object v2, v1, v4

    .line 89
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Set;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    return-object v0
.end method

.method public final migrate(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->getUpdateStatement()Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method

.method public onPostMigrate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->setOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->whereOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-void
.end method

.method public varargs set([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->setOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->setOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->setOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 58
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->andAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-object p0
.end method

.method public varargs where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->whereOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->whereOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/UpdateTableMigration;->whereOperatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 68
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->andAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-object p0
.end method
