.class public Lorg/xbill/DNS/lookup/ServerFailedException;
.super Lorg/xbill/DNS/lookup/LookupFailedException;
.source "ServerFailedException.java"


# instance fields
.field private final extendedRcode:Lorg/xbill/DNS/ExtendedErrorCodeOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/lookup/ServerFailedException;->extendedRcode:Lorg/xbill/DNS/ExtendedErrorCodeOption;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Lorg/xbill/DNS/Name;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/xbill/DNS/lookup/ServerFailedException;->extendedRcode:Lorg/xbill/DNS/ExtendedErrorCodeOption;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/ExtendedErrorCodeOption;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lookup for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {p2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/xbill/DNS/ExtendedErrorCodeOption;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;I)V

    iput-object p3, p0, Lorg/xbill/DNS/lookup/ServerFailedException;->extendedRcode:Lorg/xbill/DNS/ExtendedErrorCodeOption;

    return-void
.end method


# virtual methods
.method public getExtendedRcode()Lorg/xbill/DNS/ExtendedErrorCodeOption;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/lookup/ServerFailedException;->extendedRcode:Lorg/xbill/DNS/ExtendedErrorCodeOption;

    return-object v0
.end method
