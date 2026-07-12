.class public Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;
.super Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;
.source "DatabaseStatementWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;"
    }
.end annotation


# instance fields
.field private final databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

.field private final modelQueriable:Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;",
            "Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    .line 88
    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    .line 83
    invoke-interface {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindDouble(ID)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    .line 78
    invoke-interface {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    .line 73
    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindNull(I)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    .line 68
    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    .line 42
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    return-void
.end method

.method public execute()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    .line 37
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->execute()V

    return-void
.end method

.method public executeInsert()J
    .locals 5

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    .line 58
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->executeInsert()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 60
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object v2

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;

    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getTable()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;

    .line 61
    invoke-virtual {v4}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v4

    .line 60
    invoke-virtual {v2, v3, v4}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :cond_0
    return-wide v0
.end method

.method public executeUpdateDelete()J
    .locals 5

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    .line 27
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->executeUpdateDelete()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 29
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object v2

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;

    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getTable()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;

    .line 30
    invoke-virtual {v4}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v4

    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :cond_0
    return-wide v0
.end method

.method public simpleQueryForLong()J
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    .line 47
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;->databaseStatement:Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    .line 53
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
