.class public Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;
.super Ljava/lang/Object;
.source "BaseAsyncObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TAsync:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private currentTransaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

.field private final databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

.field private final error:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

.field private errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

.field private final success:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

.field private successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

.field private final table:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject$1;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject$1;-><init>(Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->error:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 89
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject$2;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject$2;-><init>(Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->success:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->table:Ljava/lang/Class;

    .line 25
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    return-void
.end method

.method static synthetic access$000(Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    return-object p0
.end method

.method static synthetic access$102(Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->currentTransaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    return-object p1
.end method

.method static synthetic access$200(Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->currentTransaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->cancel()V

    :cond_0
    return-void
.end method

.method public error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;",
            ")TTAsync;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->errorCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    return-object p0
.end method

.method protected executeTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->cancel()V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->databaseDefinition:Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    .line 63
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->error:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    .line 64
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->success:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    .line 65
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->currentTransaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    .line 67
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V

    return-void
.end method

.method public getTable()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->table:Ljava/lang/Class;

    return-object v0
.end method

.method protected onError(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method protected onSuccess(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V
    .locals 0

    return-void
.end method

.method public success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;",
            ")TTAsync;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    return-object p0
.end method
