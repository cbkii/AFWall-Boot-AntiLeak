.class public interface abstract Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;
.super Ljava/lang/Object;
.source "RadialMenuWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/widget/RadialMenuWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RadialMenuEntry"
.end annotation


# virtual methods
.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIcon()I
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract menuActiviated()V
.end method
