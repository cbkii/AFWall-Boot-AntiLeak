.class public Leu/chainfire/libsuperuser/Shell$ShellNotClosedException;
.super Ljava/lang/RuntimeException;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShellNotClosedException"
.end annotation


# static fields
.field public static final EXCEPTION_NOT_CLOSED:Ljava/lang/String; = "Application did not close() interactive shell"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Application did not close() interactive shell"

    .line 75
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
