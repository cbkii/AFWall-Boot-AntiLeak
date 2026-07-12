.class public Lorg/xbill/DNS/lookup/RedirectLoopException;
.super Lorg/xbill/DNS/lookup/RedirectOverflowException;
.source "RedirectLoopException.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "Detected a redirect loop"

    .line 11
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/lookup/RedirectOverflowException;-><init>(Ljava/lang/String;I)V

    return-void
.end method
