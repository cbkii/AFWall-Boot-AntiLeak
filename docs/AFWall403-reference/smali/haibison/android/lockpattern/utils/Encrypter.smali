.class public interface abstract Lhaibison/android/lockpattern/utils/Encrypter;
.super Ljava/lang/Object;
.source "Encrypter.java"


# virtual methods
.method public abstract decrypt(Landroid/content/Context;[C)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[C)",
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract encrypt(Landroid/content/Context;Ljava/util/List;)[C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;)[C"
        }
    .end annotation
.end method
