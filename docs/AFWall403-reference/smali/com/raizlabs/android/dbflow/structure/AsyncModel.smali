.class public Lcom/raizlabs/android/dbflow/structure/AsyncModel;
.super Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;
.source "AsyncModel.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/AsyncModel$OnModelChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject<",
        "Lcom/raizlabs/android/dbflow/structure/AsyncModel<",
        "TTModel;>;>;",
        "Lcom/raizlabs/android/dbflow/structure/Model;"
    }
.end annotation


# instance fields
.field private final model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTModel;"
        }
    .end annotation
.end field

.field private modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private transient onModelChangedListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/raizlabs/android/dbflow/structure/AsyncModel$OnModelChangedListener<",
            "TTModel;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->model:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/raizlabs/android/dbflow/structure/AsyncModel;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->model:Ljava/lang/Object;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    return-object v0
.end method


# virtual methods
.method public async()Lcom/raizlabs/android/dbflow/structure/AsyncModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/AsyncModel<",
            "+",
            "Lcom/raizlabs/android/dbflow/structure/Model;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public delete()Z
    .locals 2

    .line 83
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/AsyncModel$2;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel$2;-><init>(Lcom/raizlabs/android/dbflow/structure/AsyncModel;)V

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->model:Ljava/lang/Object;

    .line 89
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->executeTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)V

    const/4 v0, 0x0

    return v0
.end method

.method public delete(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->delete()Z

    move-result p1

    return p1
.end method

.method public exists()Z
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->model:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->exists(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public exists(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->exists()Z

    move-result p1

    return p1
.end method

.method public insert()J
    .locals 2

    .line 117
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/AsyncModel$4;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel$4;-><init>(Lcom/raizlabs/android/dbflow/structure/AsyncModel;)V

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->model:Ljava/lang/Object;

    .line 123
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->executeTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public insert(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->insert()J

    move-result-wide v0

    return-wide v0
.end method

.method public load()V
    .locals 2

    .line 134
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/AsyncModel$5;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel$5;-><init>(Lcom/raizlabs/android/dbflow/structure/AsyncModel;)V

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->model:Ljava/lang/Object;

    .line 140
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->executeTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)V

    return-void
.end method

.method public load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->load()V

    return-void
.end method

.method protected onSuccess(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V
    .locals 1

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->onModelChangedListener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->onModelChangedListener:Ljava/lang/ref/WeakReference;

    .line 166
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/AsyncModel$OnModelChangedListener;

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->model:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel$OnModelChangedListener;->onModelChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public save()Z
    .locals 2

    .line 66
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/AsyncModel$1;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel$1;-><init>(Lcom/raizlabs/android/dbflow/structure/AsyncModel;)V

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->model:Ljava/lang/Object;

    .line 72
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->executeTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)V

    const/4 v0, 0x0

    return v0
.end method

.method public save(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->save()Z

    move-result p1

    return p1
.end method

.method public update()Z
    .locals 2

    .line 100
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/AsyncModel$3;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel$3;-><init>(Lcom/raizlabs/android/dbflow/structure/AsyncModel;)V

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->model:Ljava/lang/Object;

    .line 106
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->executeTransaction(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)V

    const/4 v0, 0x0

    return v0
.end method

.method public update(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->update()Z

    move-result p1

    return p1
.end method

.method public withListener(Lcom/raizlabs/android/dbflow/structure/AsyncModel$OnModelChangedListener;)Lcom/raizlabs/android/dbflow/structure/AsyncModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/AsyncModel$OnModelChangedListener<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/AsyncModel<",
            "TTModel;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/AsyncModel;->onModelChangedListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
