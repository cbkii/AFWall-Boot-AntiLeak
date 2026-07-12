.class Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

.field final synthetic val$exitCode:[I

.field final synthetic val$output:Ljava/util/List;

.field final synthetic val$wantSTDERR:Z


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$PoolWrapper;[ILjava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->this$0:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$exitCode:[I

    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$output:Ljava/util/List;

    iput-boolean p4, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$wantSTDERR:Z

    .line 2859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandResult(IILjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$exitCode:[I

    const/4 v0, 0x0

    .line 2862
    aput p2, p1, v0

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$output:Ljava/util/List;

    .line 2863
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$wantSTDERR:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$output:Ljava/util/List;

    .line 2865
    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
