.class Leu/chainfire/libsuperuser/Shell$Interactive$9;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;->run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

.field final synthetic val$STDERR:Ljava/util/List;

.field final synthetic val$STDOUT:Ljava/util/List;

.field final synthetic val$exitCode:[I


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;[ILjava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$exitCode:[I

    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$STDOUT:Ljava/util/List;

    iput-object p4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$STDERR:Ljava/util/List;

    .line 2467
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

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$exitCode:[I

    const/4 v0, 0x0

    .line 2470
    aput p2, p1, v0

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$STDOUT:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2471
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$STDERR:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2472
    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
