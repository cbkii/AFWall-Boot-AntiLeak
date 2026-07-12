.class public Lorg/xbill/DNS/lookup/NoSuchRRSetException;
.super Lorg/xbill/DNS/lookup/LookupFailedException;
.source "NoSuchRRSetException.java"


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/lookup/NoSuchRRSetException;-><init>(Lorg/xbill/DNS/Name;IZ)V

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/Name;IZ)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 19
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/xbill/DNS/Name;IZ)V

    return-void
.end method
