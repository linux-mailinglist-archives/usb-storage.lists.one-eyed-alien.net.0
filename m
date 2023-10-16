Return-Path: <usb-storage+bncBDTNDO5RRYJRBGGLWOUQMGQEZMUWVYY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 554007CA07A
	for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 09:26:17 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-53e49871d5fsf1896531a12.3
        for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 00:26:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697441177; cv=pass;
        d=google.com; s=arc-20160816;
        b=KOt3Zw4yCqQN/XUJ6psr/YWCjIWAnB4Hb0Qs4aK0nwXyLfpWkYG03Fa0EaU24r+TRb
         smzGAMYCL+1+gFyu3fPZO3wUTqkQ7WiaahUlZ1E466K8NdsjxP1K7LPiFwrzkWTcVxuc
         RNo8uMF29WHmm7ARzVDYKGOURSTr6RZgYR1lJY22qhwF46o7es3ezX7/2Az245u/cFqM
         GFDZRg6wlDdxrr+WE+3etYoBAib/SltBUNKOjKtRYDqW1XYeXBJCp2RoeyWO+KO+OG8X
         eeyvauuBAg+XqlTNaHib5ql3ddWd7R0yDllViaTvduFp+4fSUGM4lzezyl+h90nQjSgH
         qtPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6ZtNK6yH144Ae4CqlFZTFzRp9c3phlWJeN4ZcZWK5/c=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=brOikjxYvp0ihQZdINpnRe0sEQScxV/CXjPTtubjt98tclsjlaFXzch09X86jUFa5l
         DDYZGp3Cgz7UwfsZgZHqDxiyrT/XEWrPjp2rvkK2FaIZvrdn0uuLeo/2jgylXdGSBbc+
         0LF/Z9a5v8p9+E65xtFnI9hlFshMEH5RxmKPUSsr7Su1SS9ZF14GvwvFLKYN1qQTIvMi
         y+zPbrgr6uxg2ERrQCF1vhNw1umI6OWafEJsCUjwy6vt6BtctIE8uMjZ9AV9kcYz/ojy
         KhDzMnWUQ9Eyd4t6Kjkze4UYHE/g+MaVpPB+ju73crPz94FZZqD+aEy8YTOBG4s+iFws
         frvA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=UxS7WJpZ;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697441177; x=1698045977; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6ZtNK6yH144Ae4CqlFZTFzRp9c3phlWJeN4ZcZWK5/c=;
        b=Q8nsIgj6hiNojTEj0D7YploZKMMrW2qcWE494sr9qM+8NX0v1VAHuA+6Buhd3n7Df0
         b+6h41lsc8/VN6W+HeA6gkXiphb/IvjgewJP832QBPOZd4cxsSo4hJ039XJb0Azk1GJ4
         S5+kLm4Bc+DGhMMHCE1ipL7+anto8y9PFakQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697441177; x=1698045977;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ZtNK6yH144Ae4CqlFZTFzRp9c3phlWJeN4ZcZWK5/c=;
        b=CO+FQDCmsTJ4crD+aOanfCzR0e0L3YHNqyYDczDcopolbyBG9MJztvudXpABD83RcY
         NrcbZb7To7XoeZHHZe8qFfnektbTb+e8iKPmuW7kCoX6UHzqfkkjnY4Y7F1rsdhGaaeY
         pZ5yEtq0u0BZ+QOLGl1oHDi4MI6ac6DMp09vX9d4DFECEuu02RWIQ9ZDSQ3BPWg+tDya
         6msmrje5QbLidgQsBiV/x1XpzdOhW10f1LFlbg6mamctq+YdZGxpCcTF/If91Rn2zBGK
         l3JPamWYup/EsNlfuaQFu8bc8w3mf6FrXuoigdAoDfZpB7jQw0vhU5yrO/VZY0Wh3pIr
         139A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yxn/O7Tcpkg9KIbpEovxYsPras/XCuVfkEFMVJaRm7cxTYeb/g+
	kAKmnKdy5llQ0aKAWiKRBmdAZA==
X-Google-Smtp-Source: AGHT+IFD+dTOIGledABARf++0YPeLgylbn1qyOihhDFdFiPPEoW9Fzefz4PgRiQI844bXT5XI0Ff6Q==
X-Received: by 2002:a05:6402:5249:b0:53e:1b:15f5 with SMTP id t9-20020a056402524900b0053e001b15f5mr10888961edd.39.1697441177048;
        Mon, 16 Oct 2023 00:26:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3219:b0:523:6ada:2ead with SMTP id
 g25-20020a056402321900b005236ada2eadls102321eda.1.-pod-prod-03-eu; Mon, 16
 Oct 2023 00:26:16 -0700 (PDT)
X-Received: by 2002:a17:907:74b:b0:9bd:a669:d682 with SMTP id xc11-20020a170907074b00b009bda669d682mr7361614ejb.20.1697441175830;
        Mon, 16 Oct 2023 00:26:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697441175; cv=none;
        d=google.com; s=arc-20160816;
        b=bNdHuMthF4ouin8tiUVtabZg5oBCJYltsgUe9y1ZU9Mkib+aongIDvFDnmcvANZZOK
         1rEkXj4s7TJLjpKwTRS8tkm0n7iKTwXl+c9nGT2L07HgWHn5MkpT/YRYaYn+nCsSemkO
         jhwgiUHKWoQkCjsusdBp8Zo/6nO8vSl9p66rHE5c1tRejWU7cYvPAm8Kxt1uFprHQz3y
         bnJc7EEh6DNmlG7BJY+MkRBfDMZ3gYVcdbbBe7WC48NT2FR/hQLJjd6Vtk8VV6+rqnpd
         oE62Jr4mKJsEidDPZ3x80uaTKTcJ+n6x9xBjOFSD0HuNhwXOmXwr+Ox5Jol5gXzd86G2
         rgfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MpEK+6I3PpgTQZdQO8LItkPIzXzeXnEoEvyoBxG3EVo=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=j1/YkqUAPUnEDapGEfhsqheRLlshhUsR8xKbX26SAEH/EN1j+D96xntiI75YLTlTvd
         RHsmmB6+Z7TtWbbETmktoniw6cvb+2T3cqivLyr8Ld6btjCaYRNqpSwZHpKxCFnhrCSm
         NZ6x69QNfgkAu6K76JD3YuReEtnyEvcuz7A4e2aEsOglmLgNx4SuDmm0kONGARR06RdY
         +2XtEg4eUdcOE3yYLpwOwnOCWATuz3cRpYBSUjLKYLBE5o1dG2vcwr8TM1GB4h1y6vfD
         8uDBa/TZeunUe5d6L1IFvpxjiL9o8EDoJ5URJBaJdWf5aIkw+W+TpyliunOpGk+osUhR
         KktQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=UxS7WJpZ;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id um40-20020a170907cb2800b009ba0a3966ffsor1091753ejc.21.2023.10.16.00.26.15
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 16 Oct 2023 00:26:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:308b:b0:9b6:50cd:a222 with SMTP id 11-20020a170906308b00b009b650cda222mr25617284ejv.54.1697441175280;
        Mon, 16 Oct 2023 00:26:15 -0700 (PDT)
Received: from sauvignon.fi.muni.cz ([2001:718:801:22c:bdcb:518:be8f:6a76])
        by smtp.gmail.com with ESMTPSA id n25-20020a17090673d900b0099297782aa9sm3399980ejl.49.2023.10.16.00.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 00:26:14 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	oneukum@suse.com,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [PATCH 3/7] usb-storage: use fflags index only in
 usb-storage driver
Date: Mon, 16 Oct 2023 09:26:00 +0200
Message-ID: <20231016072604.40179-4-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231016072604.40179-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=UxS7WJpZ;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

This patch adds a parameter to use driver_info translation function
(which will be defined in the following patch).

Only USB storage driver will use it, as other drivers do not need
more than 32-bit quirk flags.

Signed-off-by: Milan Broz <gmazyland@gmail.com>
Reviewed-by: Alan Stern <stern@rowland.harvard.edu>
---
 drivers/usb/storage/alauda.c        | 2 +-
 drivers/usb/storage/cypress_atacb.c | 2 +-
 drivers/usb/storage/datafab.c       | 2 +-
 drivers/usb/storage/ene_ub6250.c    | 2 +-
 drivers/usb/storage/freecom.c       | 2 +-
 drivers/usb/storage/isd200.c        | 2 +-
 drivers/usb/storage/jumpshot.c      | 2 +-
 drivers/usb/storage/karma.c         | 2 +-
 drivers/usb/storage/onetouch.c      | 2 +-
 drivers/usb/storage/realtek_cr.c    | 2 +-
 drivers/usb/storage/sddr09.c        | 2 +-
 drivers/usb/storage/sddr55.c        | 2 +-
 drivers/usb/storage/shuttle_usbat.c | 2 +-
 drivers/usb/storage/usb.c           | 9 +++++----
 drivers/usb/storage/usb.h           | 3 ++-
 15 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 115f05a6201a..74e293981ab1 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -1241,7 +1241,7 @@ static int alauda_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - alauda_usb_ids) + alauda_unusual_dev_list,
-			&alauda_host_template);
+			&alauda_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/cypress_atacb.c b/drivers/usb/storage/cypress_atacb.c
index 98b3ec352a13..2fc939f709b0 100644
--- a/drivers/usb/storage/cypress_atacb.c
+++ b/drivers/usb/storage/cypress_atacb.c
@@ -246,7 +246,7 @@ static int cypress_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - cypress_usb_ids) + cypress_unusual_dev_list,
-			&cypress_host_template);
+			&cypress_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/datafab.c b/drivers/usb/storage/datafab.c
index bcc4a2fad863..fad9eca3cad9 100644
--- a/drivers/usb/storage/datafab.c
+++ b/drivers/usb/storage/datafab.c
@@ -727,7 +727,7 @@ static int datafab_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - datafab_usb_ids) + datafab_unusual_dev_list,
-			&datafab_host_template);
+			&datafab_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
index 97c66c0d91f4..6985d3419b3c 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -2331,7 +2331,7 @@ static int ene_ub6250_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 		   (id - ene_ub6250_usb_ids) + ene_ub6250_unusual_dev_list,
-		   &ene_ub6250_host_template);
+		   &ene_ub6250_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/freecom.c b/drivers/usb/storage/freecom.c
index 2b098b55c4cb..6d971bd711d8 100644
--- a/drivers/usb/storage/freecom.c
+++ b/drivers/usb/storage/freecom.c
@@ -548,7 +548,7 @@ static int freecom_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - freecom_usb_ids) + freecom_unusual_dev_list,
-			&freecom_host_template);
+			&freecom_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
index 4e0eef1440b7..ecdc494756a2 100644
--- a/drivers/usb/storage/isd200.c
+++ b/drivers/usb/storage/isd200.c
@@ -1545,7 +1545,7 @@ static int isd200_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - isd200_usb_ids) + isd200_unusual_dev_list,
-			&isd200_host_template);
+			&isd200_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/jumpshot.c b/drivers/usb/storage/jumpshot.c
index 229bf0c1afc9..1ade1e45c81d 100644
--- a/drivers/usb/storage/jumpshot.c
+++ b/drivers/usb/storage/jumpshot.c
@@ -653,7 +653,7 @@ static int jumpshot_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - jumpshot_usb_ids) + jumpshot_unusual_dev_list,
-			&jumpshot_host_template);
+			&jumpshot_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/karma.c b/drivers/usb/storage/karma.c
index 38ddfedef629..60868be0e38c 100644
--- a/drivers/usb/storage/karma.c
+++ b/drivers/usb/storage/karma.c
@@ -205,7 +205,7 @@ static int karma_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - karma_usb_ids) + karma_unusual_dev_list,
-			&karma_host_template);
+			&karma_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/onetouch.c b/drivers/usb/storage/onetouch.c
index 01f3c2779ccf..fe34f20cce03 100644
--- a/drivers/usb/storage/onetouch.c
+++ b/drivers/usb/storage/onetouch.c
@@ -280,7 +280,7 @@ static int onetouch_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - onetouch_usb_ids) + onetouch_unusual_dev_list,
-			&onetouch_host_template);
+			&onetouch_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 0c423916d7bf..892b26714b5f 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -1041,7 +1041,7 @@ static int realtek_cr_probe(struct usb_interface *intf,
 	result = usb_stor_probe1(&us, intf, id,
 				 (id - realtek_cr_ids) +
 				 realtek_cr_unusual_dev_list,
-				 &realtek_cr_host_template);
+				 &realtek_cr_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
index 51bcd4a43690..107eeb7fda04 100644
--- a/drivers/usb/storage/sddr09.c
+++ b/drivers/usb/storage/sddr09.c
@@ -1753,7 +1753,7 @@ static int sddr09_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - sddr09_usb_ids) + sddr09_unusual_dev_list,
-			&sddr09_host_template);
+			&sddr09_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index 15dc25801cdc..c64b72de453f 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -985,7 +985,7 @@ static int sddr55_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - sddr55_usb_ids) + sddr55_unusual_dev_list,
-			&sddr55_host_template);
+			&sddr55_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/shuttle_usbat.c b/drivers/usb/storage/shuttle_usbat.c
index f0d0ca37163d..3ac82f49401c 100644
--- a/drivers/usb/storage/shuttle_usbat.c
+++ b/drivers/usb/storage/shuttle_usbat.c
@@ -1838,7 +1838,7 @@ static int usbat_probe(struct usb_interface *intf,
 
 	result = usb_stor_probe1(&us, intf, id,
 			(id - usbat_usb_ids) + usbat_unusual_dev_list,
-			&usbat_host_template);
+			&usbat_host_template, 0);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index d1ad6a2509ab..db8c4d2c8d11 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -574,7 +574,7 @@ EXPORT_SYMBOL_GPL(usb_stor_adjust_quirks);
 
 /* Get the unusual_devs entries and the string descriptors */
 static int get_device_info(struct us_data *us, const struct usb_device_id *id,
-		const struct us_unusual_dev *unusual_dev)
+		const struct us_unusual_dev *unusual_dev, int fflags_use_index)
 {
 	struct usb_device *dev = us->pusb_dev;
 	struct usb_interface_descriptor *idesc =
@@ -925,7 +925,8 @@ int usb_stor_probe1(struct us_data **pus,
 		struct usb_interface *intf,
 		const struct usb_device_id *id,
 		const struct us_unusual_dev *unusual_dev,
-		const struct scsi_host_template *sht)
+		const struct scsi_host_template *sht,
+		int fflags_use_index)
 {
 	struct Scsi_Host *host;
 	struct us_data *us;
@@ -962,7 +963,7 @@ int usb_stor_probe1(struct us_data **pus,
 		goto BadDevice;
 
 	/* Get the unusual_devs entries and the descriptors */
-	result = get_device_info(us, id, unusual_dev);
+	result = get_device_info(us, id, unusual_dev, fflags_use_index);
 	if (result)
 		goto BadDevice;
 
@@ -1120,7 +1121,7 @@ static int storage_probe(struct usb_interface *intf,
 	}
 
 	result = usb_stor_probe1(&us, intf, id, unusual_dev,
-				 &usb_stor_host_template);
+				 &usb_stor_host_template, 1);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index 97c6196d639b..975c47efcce7 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -187,7 +187,8 @@ extern int usb_stor_probe1(struct us_data **pus,
 		struct usb_interface *intf,
 		const struct usb_device_id *id,
 		const struct us_unusual_dev *unusual_dev,
-		const struct scsi_host_template *sht);
+		const struct scsi_host_template *sht,
+		int fflags_use_index);
 extern int usb_stor_probe2(struct us_data *us);
 extern void usb_stor_disconnect(struct usb_interface *intf);
 
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231016072604.40179-4-gmazyland%40gmail.com.
