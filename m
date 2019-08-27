Return-Path: <usb-storage+bncBCUMB4EN24LRBROTSXVQKGQEIAKBKVI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 990C79F1B5
	for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 19:35:01 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id z2sf11774733wrt.6
        for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 10:35:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566927301; cv=pass;
        d=google.com; s=arc-20160816;
        b=lOSpZPfZ/SOb5rEvbXivqoNaUucE2Y9wX5wIA3Z8NQQ2bprZs+YbBmgzGqWe8eGcud
         PeIznUVVtFnHSsExxrlAluqDsN0O5frc6ktNHPvTGLXlFMC+9LolYaTh87wtL2eig29X
         IJiN3w1EC/RbelgzqZhdJN05TN1XE1zrapS9FNCBBKYIKqVlt9g3LiSdYC48qU8m9I+4
         6VPCi9RKPi+Ci1TrV6+kuKEN0GKR0EpeXi440kOYK28SKgFRvbMOA8+ei231b7lvvczm
         q/kJo4AoeP14UsMt/tt45+CNrtUid2JQii+B5FrxwLMXqC8mvUVRSSTtXYwP1HaONc+c
         VrAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=VfY1lizWcM+pn1cj4pfTHjC5bLrGCAEUiQyU0BNR6lM=;
        b=vLx2ukvYHz0YSwvJADZuyj2iQxwIOTOGK2pMhGbzn2eSoXBEOz4NxcBIPzICauM7ZD
         836wdAojtZnJPAmoITMPHN+V5amY/bnynXbUTSGEA5V0xnCZI240YErGOZwuOsDrjnM+
         bZFIYxv6jZ6KYSvKbA/bcOiiRI61eWkW42RQ6z8sPvPfYm8vqWmLsS+yQ3MqD2n0Pnbp
         2PzzY19AtRuQ+Y1RXqJYQWj5yZcYOenEKZbpuTzqNw0kPPXCvODv+JLmpOolA37WMQp6
         noG/RveyqMS4FZvCTwvgKcXiyeNplNziqVaDQApmkNqjTisYUJ5BJJRUil6tZODLn/yg
         HkNQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VfY1lizWcM+pn1cj4pfTHjC5bLrGCAEUiQyU0BNR6lM=;
        b=QnLBuOdCWzKKZC/4bX+6uGXgoNJbAzDaUwC7kbMCdiSTsLK9527o3qe6jNkWquUZSt
         gpG5sU+75Za80B5Nw69mGlicp6iSDW7JPWLkif8zN+GtYYTcXNPocbr3JV3QOBtx0VZr
         IkKyH8aEhiGq3B3/R82Sh7IWkSB6RH8dDNUAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VfY1lizWcM+pn1cj4pfTHjC5bLrGCAEUiQyU0BNR6lM=;
        b=YI0+XynQQX72d/I11TMaxRoX2Edt72vYin6yPCYY+9EJDH+zB9oam7SRUpuns7E/zi
         e2/9elgrQg4VZ+0bc6pRLvl9ahxJCeQmxZ1d+5UgpjlGqwq1hd+EYvGzTE2RlgNNacxw
         phu7HJOdxLE/I2g2rs7nfLU0cfo+fuNP+IQT4h4ZvOP1NwFSf1sQGhrypg01H0Dhwj5v
         2ZSXnT1rO/exLfJViAADCfp6BcJkZ7bedjCZl1jS0yj1QXSgmxajKPLhzZiI3m2yhZCa
         Tt0h/MG9EK59Qc+gFoh4b9eGntk0S+qlXA31gahyQa+tDTTXDV/OIQZzaYWKfW6PTpoc
         utiQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXIQetp38Xcc2um9KLmYrJkDIlme/j2lBZVlLfvKMbxqpakm3qD
	0sVAKnN+aDvumYddLRgYViDBSQ==
X-Google-Smtp-Source: APXvYqzp7O+PkXhbx/Vl5oluLP4/1ipJ81FMe5mfcNhyvZS6jb/JIlovPYmf8N/7EG+fJ6J88+Ll3w==
X-Received: by 2002:a5d:62c1:: with SMTP id o1mr25306177wrv.293.1566927301269;
        Tue, 27 Aug 2019 10:35:01 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:6746:: with SMTP id l6ls631515wrw.15.gmail; Tue, 27 Aug
 2019 10:35:00 -0700 (PDT)
X-Received: by 2002:a5d:4589:: with SMTP id p9mr792345wrq.276.1566927300728;
        Tue, 27 Aug 2019 10:35:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566927300; cv=none;
        d=google.com; s=arc-20160816;
        b=nnHspOb5rnBWAuTKhSqoxzd6ixzRExCnCeDKpnwEAlt6t5kPKgeWf+fXZPIdP2DaMZ
         YNpYLXWcGLDuPDmcEAS2zGNDo9aWD9tkQ3Zo4C6qBuvzNaBEzGuc779Qzosf2he9XYyk
         uxhJK0L2Dy8aY6fhs94EJ3Rdp/IHdN9lBONx43muVFTbgkq9TC3DRapnZNzi9rXI7bSm
         n+oqAyd1W6RXl6Ci2iasdicQC1cCPKhm+7g2vh7ShpX4OQ3S3LcrI2u6BsNisu89oRPD
         J7yxe4CJxwYh2PXQ+XpRMt3b24ah4U+7D2cMf5DCh4X83pOKLvCZVKNxnOWXr0EVgUrc
         Qw+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=kvyzdQGVeTPf2oeAzP51oAw6GXpt871t8mhkgjEn7Pk=;
        b=WmgRLUh4q6j7V7x0yHj94Xbn+aeK0pzknzEnOonm5ssWW2QHaj8R22m/b3Ypjk7bXb
         ovGrcK/gLlEqxy00mY7YyOyK3XzdCq+EV12lJevKu9DfVOK4fcE6mVZvdej77U5dq4n4
         YaR5Ji3ep0PQpj5CWzKSDnmDE7jnFwhy0NHZTLPaMb3Tb3R3ePxwb9ZKqQ7xWwSLNg9t
         6znmYeFozG3BRPcwIbJkWNKT44YbHtxGqN6JxRTu4edNH0ikQn4PuY2xLeFP4o7gVTjx
         NuGPKorP8ghCCj4V1vPuUIpWl6q2TVlIumVE0daqwZCcl12/oocYb+pdpjlL3shDrvSR
         3h/w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id q6si9412wmd.120.2019.08.27.10.35.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 27 Aug 2019 10:35:00 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.76)
	(envelope-from <kai.heng.feng@canonical.com>)
	id 1i2fMv-0004Ep-71; Tue, 27 Aug 2019 17:34:57 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	bauer.chen@realtek.com,
	ricky_wu@realtek.com,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: [usb-storage] [PATCH v3 2/2] USB: storage: ums-realtek: Whitelist
 auto-delink support
Date: Wed, 28 Aug 2019 01:34:50 +0800
Message-Id: <20190827173450.13572-2-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190827173450.13572-1-kai.heng.feng@canonical.com>
References: <20190827173450.13572-1-kai.heng.feng@canonical.com>
X-Original-Sender: kai.heng.feng@canonical.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of kai.heng.feng@canonical.com designates
 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

Auto-delink requires writing special registers to ums-realtek devices.
Unconditionally enable auto-delink may break newer devices.

So only enable auto-delink by default for the original three IDs,
0x0138, 0x0158 and 0x0159.

Realtek is working on a patch to properly support auto-delink for other
IDs.

BugLink: https://bugs.launchpad.net/bugs/1838886
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
v3:
- Whitelisting instead of adding new module parameter.
v2:
- Use auto_delink_support instead of auto_delink_enable.

 drivers/usb/storage/realtek_cr.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index beaffac805af..1d9ce9cbc831 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -996,12 +996,15 @@ static int init_realtek_cr(struct us_data *us)
 			goto INIT_FAIL;
 	}
 
-	if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
-	    CHECK_FW_VER(chip, 0x5901))
-		SET_AUTO_DELINK(chip);
-	if (STATUS_LEN(chip) == 16) {
-		if (SUPPORT_AUTO_DELINK(chip))
+	if (CHECK_PID(chip, 0x0138) || CHECK_PID(chip, 0x0158) ||
+	    CHECK_PID(chip, 0x0159)) {
+		if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
+				CHECK_FW_VER(chip, 0x5901))
 			SET_AUTO_DELINK(chip);
+		if (STATUS_LEN(chip) == 16) {
+			if (SUPPORT_AUTO_DELINK(chip))
+				SET_AUTO_DELINK(chip);
+		}
 	}
 #ifdef CONFIG_REALTEK_AUTOPM
 	if (ss_en)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190827173450.13572-2-kai.heng.feng%40canonical.com.
