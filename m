Return-Path: <usb-storage+bncBDMYPB44VAFRBCEI2LWAKGQE4CFZXUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa46.google.com (mail-vk1-xa46.google.com [IPv6:2607:f8b0:4864:20::a46])
	by mail.lfdr.de (Postfix) with ESMTPS id BB433C86E7
	for <lists+usb-storage@lfdr.de>; Wed,  2 Oct 2019 13:03:37 +0200 (CEST)
Received: by mail-vk1-xa46.google.com with SMTP id a7sf9442575vkg.2
        for <lists+usb-storage@lfdr.de>; Wed, 02 Oct 2019 04:03:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570014216; cv=pass;
        d=google.com; s=arc-20160816;
        b=kk5Q7nrkIqXGTUoU6sEjMgjnpSP7xSb4yEWmd4yZ0BmDaJOzPMiN9Be4mXMkuyEipI
         gTgcQM4t3sRlBcelwrpRTwAHLnazovpicM5Sn3HEHM4R97IyksD2s+eXjeqYGe5ySxkT
         ohqwdN/3YpVDAALsFxx6u9Xif7F+vjnt3knG1MRX7xQ5xmZFa/gWKK4qnjX1wXGQm90N
         po2nDPoNra4+aiZYj8spBdZNImHaxE1PXeqLy0xGVZWnvt6iozxJsyCkIWv4FRnwSTO7
         sZCtA82tywspqMT4ogZ8SgtFyne6u6goLLsmhxHRWKT84REQ5/AmcMT5b2YQpWOPjOWu
         XiLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=B8TPUw8F81TfRsoFyUB9xLHkfShnP7LuffOS61sRlz4=;
        b=Fj2TIq8rvjooX0hL4AjwyCmb1WumtXOfpiAmZsyGYLAg9RdWTXtQXjCP+HO4XSIlik
         xcNPrRvgvD2+rbaKBcEmCmBD0juR8LZ5e+mMHkoJFkwNlakvvBUodGVpk+r3q22WEIRe
         AOUaTdGJrBln6YGJNfmFMTdu0NLIDFbkDhoFDIazkl/+G44M3QkUHEFVp4hSuyOOXF14
         PfJtHAesM2IZBwu9wStMr4K61w90+fZcDxCe1SAgLwyAY10UViwavrrfx3gJ9Ipr4+kS
         wDzmohacmiiLXbDN5hJcehoVJAys4Gbfci6z5GabH1zLXJr1oSVCDbtV6ErmuzFoNLBD
         vWJw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UuCC7ZgC;
       spf=pass (google.com: domain of 3b4suxqgkafq8w0994y32aa270.ya8@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3B4SUXQgKAFQ8w0994y32AA270.yA8@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B8TPUw8F81TfRsoFyUB9xLHkfShnP7LuffOS61sRlz4=;
        b=LRHY/hI+fC3pNShoT3KJycC0b5l0ibuvwo5BWyahAl8fmNmoqSOlOmBEm9dOyVVsWV
         BinAPD/37+z2xcRIVgLC50Cy9NA+ENyhNoejn7PGYA3X0v+Y6MQoTyfOqWpFUmZ1499n
         58YwBsu1ZIggafuAELI624TQOm6wc4C/HhXoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B8TPUw8F81TfRsoFyUB9xLHkfShnP7LuffOS61sRlz4=;
        b=O7gJCXDzlZgThKTS+naE0bO3DBXISKd31EZTOTiavvQHxalMHqcTD+BBuQ25FZkC0m
         kmIuqJLjS4CgDuWr6labD5hyfVcgAx2Tcu5OPh+VLHITJeOycuJrDPAsDX1T7czz/MKW
         EwXgrlvlr9rpjJMCUNsAfhJh0eG8z+9y3pdN5iuejG/KTAK+r5GkM2U2D1xZUg3zFYmg
         MvygXPSHGcgcSDWBjqp+Zh+fgmFYDgUAxdJ2LZN2cIwAp26wOlrEVMjW5Zvq2dX5vQPv
         qEmwnhmDP22SRHqmm+VwuKXK5D6kilSDDTXUmGNp+T+6/yDbzPqrX/yg7V5zlvPWN5nF
         SRfw==
X-Gm-Message-State: APjAAAVrpwgZPC9V6bcznYsTS5sOHfBfqCEF/JWX9yTHT2i9I66hH9mz
	/S2/Ua93mwXHjzwL1b5YlkDQlg==
X-Google-Smtp-Source: APXvYqxdlilihlZWzTAgawT7tUIXb59AmazydrsEqYTlVrD4/4Fx/o7QlQUdIEt7rMfJW5Qaeetoiw==
X-Received: by 2002:a67:f058:: with SMTP id q24mr1490805vsm.27.1570014216705;
        Wed, 02 Oct 2019 04:03:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a67:2e95:: with SMTP id u143ls206583vsu.0.gmail; Wed, 02 Oct
 2019 04:03:36 -0700 (PDT)
X-Received: by 2002:a67:2f93:: with SMTP id v141mr1285237vsv.96.1570014216163;
        Wed, 02 Oct 2019 04:03:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570014216; cv=none;
        d=google.com; s=arc-20160816;
        b=zTod97eA+I4NzJhEMl59twtFa2vmx2+LW6tWxUNCMfnIv18aMTGqauOlnvJzlYKA0Y
         RxDkw7VJRSFQ0KeJhCTu4qwwtzPyGVbuJ+oMtWALPfPegTVGvwXBV7rH9F79YinINV8T
         MCkU1np4W9o3WOUkifbM9Wc1I4CacPXJN3/Jn4CSeIDzBjZoZENG0ssk2536wNM7ODp9
         a6V0adf0+1dPoTARIMXepNHfJGjLaH74YohYluxccJTWnFWCkhczXgLCRoVf7r/+SOuL
         9YUkNhwIx+yMwFToa7EKCW//Aa4Nqyapf0a1pjbqeIKUazHIst5e7+PfyVZPzyOAshBG
         OXPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=F+NGpTeaeb0MugbRhc2tQ0Tvk6r4JBYeMAAiqO9gTaM=;
        b=AAwaLkMdbr3MNDe83Vt80AABEouvP1MXq/Jc4N424w9NWNn0r3L8OCnzsoo+bXnGvk
         a05zMfa4XEAVl2ZpZVmTwYeFKgRHFiAGxYCaAj5DAM4Lq3MR8J4xbZ8KbjYHq0xfrKVn
         ZbbyUh/ngbOsYVziXQnw0RzAJHoJ+nuWOPY8B2XSTdorBGtuLDk3tNrWVillYSAklF6W
         WwwpnuKtZo9b/w4xuwxLJudxYWDhOzNP6rG0oUIUh/acLszFeQdn9y9moO4Vuf1AyijS
         N3VM3P4EMcsAEz8GpTmSuG2WmbBqYeJ5KIdd6whoT1XcY6Aj8ORfirRT7qILTzfr5ICk
         ITDQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UuCC7ZgC;
       spf=pass (google.com: domain of 3b4suxqgkafq8w0994y32aa270.ya8@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3B4SUXQgKAFQ8w0994y32AA270.yA8@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id w47sor8528009uad.42.2019.10.02.04.03.36
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 02 Oct 2019 04:03:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3b4suxqgkafq8w0994y32aa270.ya8@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ab0:6607:: with SMTP id r7mr1307035uam.27.1570014215724;
 Wed, 02 Oct 2019 04:03:35 -0700 (PDT)
Date: Wed,  2 Oct 2019 12:03:12 +0100
In-Reply-To: <20190917231031.81341-1-maennich@google.com>
Message-Id: <20191002110312.75749-1-maennich@google.com>
Mime-Version: 1.0
References: <20190917231031.81341-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [usb-storage] [PATCH v3] usb-storage: SCSI glue: use dev_err instead
 of printk
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, 
	Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UuCC7ZgC;       spf=pass
 (google.com: domain of 3b4suxqgkafq8w0994y32aa270.ya8@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3B4SUXQgKAFQ8w0994y32AA270.yA8@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

Follow common practice and retire printk(KERN_ERR ...) in favor of
dev_err().

Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: usb-storage@lists.one-eyed-alien.net
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 drivers/usb/storage/scsiglue.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 6737fab94959..4c0c247e4101 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -379,8 +379,8 @@ static int queuecommand_lck(struct scsi_cmnd *srb,
 
 	/* check for state-transition errors */
 	if (us->srb != NULL) {
-		printk(KERN_ERR "usb-storage: Error in %s: us->srb = %p\n",
-			__func__, us->srb);
+		dev_err(&us->pusb_intf->dev,
+			"Error in %s: us->srb = %p\n", __func__, us->srb);
 		return SCSI_MLQUEUE_HOST_BUSY;
 	}
 
-- 
2.23.0.581.g78d2f28ef7-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20191002110312.75749-1-maennich%40google.com.
