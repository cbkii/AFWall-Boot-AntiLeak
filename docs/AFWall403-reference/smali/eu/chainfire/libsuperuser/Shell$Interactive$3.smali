.class Leu/chainfire/libsuperuser/Shell$Interactive$3;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;->startWatchdog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1681
    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1500(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    return-void
.end method
