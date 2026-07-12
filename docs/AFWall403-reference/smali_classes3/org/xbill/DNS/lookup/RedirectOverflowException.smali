.class public Lorg/xbill/DNS/lookup/RedirectOverflowException;
.super Lorg/xbill/DNS/lookup/LookupFailedException;
.source "RedirectOverflowException.java"


# instance fields
.field private final maxRedirects:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Refusing to follow more than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " redirects"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lorg/xbill/DNS/lookup/RedirectOverflowException;->maxRedirects:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/xbill/DNS/lookup/RedirectOverflowException;->maxRedirects:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lorg/xbill/DNS/lookup/RedirectOverflowException;->maxRedirects:I

    return-void
.end method


# virtual methods
.method public getMaxRedirects()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/lookup/RedirectOverflowException;->maxRedirects:I

    return v0
.end method
