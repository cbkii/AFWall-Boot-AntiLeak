.class public Lorg/xbill/DNS/lookup/LookupFailedException;
.super Ljava/lang/RuntimeException;
.source "LookupFailedException.java"


# instance fields
.field private final isAuthenticated:Z

.field private final name:Lorg/xbill/DNS/Name;

.field private final type:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 22
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/xbill/DNS/Name;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 26
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/xbill/DNS/Name;IZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 30
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/xbill/DNS/Name;IZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/xbill/DNS/Name;IZ)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lorg/xbill/DNS/lookup/LookupFailedException;->name:Lorg/xbill/DNS/Name;

    iput p4, p0, Lorg/xbill/DNS/lookup/LookupFailedException;->type:I

    iput-boolean p5, p0, Lorg/xbill/DNS/lookup/LookupFailedException;->isAuthenticated:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 53
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/xbill/DNS/Name;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lookup for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;I)V

    return-void
.end method


# virtual methods
.method public getName()Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupFailedException;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/lookup/LookupFailedException;->type:I

    return v0
.end method

.method isAuthenticated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/lookup/LookupFailedException;->isAuthenticated:Z

    return v0
.end method
