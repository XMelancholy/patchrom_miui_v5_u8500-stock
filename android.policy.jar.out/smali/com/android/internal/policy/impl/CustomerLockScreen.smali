.class public Lcom/android/internal/policy/impl/CustomerLockScreen;
.super Landroid/widget/FrameLayout;
.source "CustomerLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomerLockScreen"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 12
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v7, "com.snda.gk.lockscreen.theme.s1"

    .line 30
    .local v7, packageName:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 32
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".LockScreen"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, className:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 35
    .local v0, apkName:Ljava/lang/String;
    new-instance v6, Ldalvik/system/PathClassLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v6, v0, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 37
    .local v6, myClassLoader:Ldalvik/system/PathClassLoader;
    const/4 v9, 0x1

    invoke-static {v1, v9, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 46
    .local v2, classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/content/res/Configuration;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Lcom/android/internal/widget/LockPatternUtils;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-class v11, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-class v11, Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 50
    .local v3, cons:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const-string v9, "CustomerLockScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Constructor :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v9, 0x4

    invoke-virtual {p1, v7, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 53
    .local v8, remoteContext:Landroid/content/Context;
    const-string v9, "CustomerLockScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remoteContext :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    const/4 v10, 0x3

    aput-object p4, v9, v10

    const/4 v10, 0x4

    aput-object p5, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    iput-object v9, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    .line 56
    const-string v9, "CustomerLockScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mView :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0           #apkName:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #cons:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v6           #myClassLoader:Ldalvik/system/PathClassLoader;
    .end local v8           #remoteContext:Landroid/content/Context;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    if-eqz v9, :cond_1

    .line 64
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v9, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    invoke-virtual {p0, v9, v5}, Lcom/android/internal/policy/impl/CustomerLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .line 58
    :catch_0
    move-exception v4

    .line 59
    .local v4, e:Ljava/lang/Exception;
    const-string v9, "CustomerLockScreen"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 101
    :cond_0
    return-void
.end method

.method public createViewSuccess()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->needsInput()Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 87
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/CustomerLockScreen;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 94
    :cond_0
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 105
    const/4 v0, 0x1

    return v0
.end method
