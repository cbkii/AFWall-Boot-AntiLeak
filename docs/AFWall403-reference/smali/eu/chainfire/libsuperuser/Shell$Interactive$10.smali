.class Leu/chainfire/libsuperuser/Shell$Interactive$10;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;->run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

.field final synthetic val$exitCode:[I

.field final synthetic val$onSyncCommandLineListener:Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;[I)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$10;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$10;->val$onSyncCommandLineListener:Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;

    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$10;->val$exitCode:[I

    .line 2484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandResult(II)V
    .locals 1

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$10;->val$exitCode:[I

    const/4 v0, 0x0

    .line 2497
    aput p2, p1, v0

    return-void
.end method

.method public onSTDERR(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$10;->val$onSyncCommandLineListener:Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;

    .line 2487
    invoke-interface {v0, p1}, Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;->onSTDERR(Ljava/lang/String;)V

    return-void
.end method

.method public onSTDOUT(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$10;->val$onSyncCommandLineListener:Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;

    .line 2492
    invoke-interface {v0, p1}, Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;->onSTDOUT(Ljava/lang/String;)V

    return-void
.end method
