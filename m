Return-Path: <usb-storage+bncBDF2TOFO7UMBBWOBQOEQMGQE5DC6TIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x247.google.com (mail-lj1-x247.google.com [IPv6:2a00:1450:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7093F3A60
	for <lists+usb-storage@lfdr.de>; Sat, 21 Aug 2021 13:17:46 +0200 (CEST)
Received: by mail-lj1-x247.google.com with SMTP id l12-20020a2ea80c0000b02900f5b2b52da7sf4133783ljq.8
        for <lists+usb-storage@lfdr.de>; Sat, 21 Aug 2021 04:17:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629544665; cv=pass;
        d=google.com; s=arc-20160816;
        b=vSdOI9CvM+nSq95oFFTsQDKAfr+S2cpqE/XWSQEDT9vB3+x9Tixc2Q3bszhKdfFjJd
         TdXgXBkWmZZlsq+P+7S8GuVtifDUDSvWmrRDUJVnqdkxBHQWtIr/tW1S2PpYNA3xnMen
         ovRts8tbW1fC5f/kkBwz/kOy7AS1tONYZ2rXaprGcUgXh1xFEt5221tgTR+E4yrLXdqC
         MaMfdhETucKfafXs1OF7HsbD6BPjofc/uNf0fPblXRqAvGqTI1MMmMiIeDD+cYZMO7sb
         wmuQ+ZPaMVJNrE2GAG3+mAfZK4xAxoJyvvjX9n0tuUcEcUyq6ADmHTJv1nTG3c0ACf0o
         JxWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=8bzYUq42Mc9DTGUkOo6llmgaFMiCxre9kvvaNqRt77A=;
        b=vOfoFO/HDsmxmgGKBwRH8SM9VCdlAhq8sHz3NsAPvd0LWcXCuGQHnsn1ebVVRCwawB
         AhDWLDEroUZaVTDxw2SCMvAchNNhuS3p02YBCXxu4r2VT7VuSWLYwR77tBrYSwCG4vLM
         EKJ6skGre55EadP7OgVg6lbPKH+CJQ+E9B4C1gdgzO31wBt6qZDQZjycmhm1VzCi9PA8
         SdqAmXL7ZYUazUGGZCAcEIK901/dfbHjij8BmP573xFINtpmcO8TX0xqDSAnQ6DIh6ov
         0k2yQ8YQwAqroPCcRg+xCp32APS2gMA79c8ZlPcakSErEWx7kjNMdw8Sa5I+GwQYD3G3
         oH9g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEdGdhiY;
       spf=pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=niklaslantau@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8bzYUq42Mc9DTGUkOo6llmgaFMiCxre9kvvaNqRt77A=;
        b=IbT8L1LXflORyEPvNAlr6tOVWqAt4qqdC3GDAGAc4eE9HHObVigVQlMLoA/iB1K/87
         FsMOS8iWVEA2/0SXSR3hDp2gx8FYhsMALDbsOKjZiUgFA8aWPil31cLfidUDs3lDGomu
         5kFMA1vGKn4b6A3G+vH7HXd1hbCYVj0pseN4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8bzYUq42Mc9DTGUkOo6llmgaFMiCxre9kvvaNqRt77A=;
        b=k4jUILNo+/WbYfPgNbHfvyBtkiQM/CgrncEjOd+ofCBHD1LIC0hdzGwDKXbe3hDNZG
         t8o5T/BXyS89X6A5KH5Egsw2UnJB0IjPN32DyjF4UFpF3tvWasDMRCkEBYNdbRwvdzvn
         EB88Hnj5ybgaeO5aKgQXE6Es/fAV9O87zdghTSV4gh71j0H8XwZ0cKRSEupscidmC0fr
         4m1GDT8sieoizmw97gAl5XiEf6kPNDZhc6dvG1ktsV5XJn9ccNt2T/x4lBMgPDllfxqV
         tQhhNiZqh64PZhYe9zDPOwL33m7B/fyTfbP1SquLgf7psKtVTTNi2AFVhJS/2XoVhchR
         ruSQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5315BzIVPqa4ZIsuMds0Xrb64B4/FmgrFsQ/KrNvtJ8Xn7Od9ldA
	PHgzDnVp6EBfJBe+jc3W5vBrDA==
X-Google-Smtp-Source: ABdhPJyQGmGN0d/Zj/+2HdK/UT6yaRN3NipTEN1v/25K5MAF+cu41AK3FEcBUhnW83kqf0jnHTqO3A==
X-Received: by 2002:a05:6512:952:: with SMTP id u18mr16307458lft.288.1629544665695;
        Sat, 21 Aug 2021 04:17:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:9109:: with SMTP id m9ls2033723ljg.2.gmail; Sat, 21 Aug
 2021 04:17:44 -0700 (PDT)
X-Received: by 2002:a2e:b0ee:: with SMTP id h14mr6979105ljl.297.1629544664244;
        Sat, 21 Aug 2021 04:17:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629544664; cv=none;
        d=google.com; s=arc-20160816;
        b=TdfB4L/DbvHk2lLj+o7MGWz0Nw7Zlk/Vj1SId8Mf/Sq4C0+F1zsE2dXvhmo9LnY6x3
         +M+1UIux0isx4I9r0+Pc3aX7vduze5Bazx7xCh6G46Wjx55yzkV20YlMTN/nQ918iCoq
         bsz7R2yS55euesVnNcbHYewab+JN6vicAhVlaQnRA3WDBpglb1dJ0SFc3VGvR2ClHH0v
         zJWmsC8jdmNrTQICxKaywDQ7NIPbk72pL2su4n8WvJBSNIfZxK+weiI4AdfOQAf7hD1C
         GDpgqT31i6J8mQE0E9kAsGu6G7KdwFKO0yWFKdJ7uCANiR3EDYlo92j3kS1Wan+7mKaC
         T3Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=9MXmrLD2O65FfyDuYkPSVWUuJRIAX4pwnHA0LopmFEQ=;
        b=znrnb7YHUBHOLcA+qoxPSOMNGpoi7tkEgBpoTIidOrDDgAwf3iLtz2g4TlQ8swhtDg
         FE4RBHqtLYqzh0HHNuFBtTCjswxIoQNwhnoTG1bSZC/C0ooSJoWI1YyD8awe7ERJoyxQ
         TgoHZPC51sYM3WLvKSOsOd+Yzr76usCa0TYBT98zQm/sS1L/IMlyKnhuHmIVt8yyeDxs
         nUqC1S6SxewboIeB6crEHer62ISyWIULhajU9hn5ka5EBaTeVEGmo/2t4juNqk71scNV
         C+3j9mUPkygVkD5CY9BprD2Q0t6i9oSyoqQZgO7J7I45lihlKWuWGgm1+pmfSG2MJhc1
         u23g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEdGdhiY;
       spf=pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=niklaslantau@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z23sor2425127lfe.84.2021.08.21.04.17.44
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 21 Aug 2021 04:17:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:ac2:4294:: with SMTP id m20mr18449505lfh.6.1629544663994;
        Sat, 21 Aug 2021 04:17:43 -0700 (PDT)
Received: from localhost.localdomain (h-62-63-208-27.A230.priv.bahnhof.se. [62.63.208.27])
        by smtp.googlemail.com with ESMTPSA id f36sm884607lfv.186.2021.08.21.04.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Aug 2021 04:17:43 -0700 (PDT)
From: Niklas Lantau <niklaslantau@gmail.com>
To: stern@rowland.harvard.edu
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Niklas Lantau <niklaslantau@gmail.com>
Subject: [usb-storage] [PATCH] Usb: Storage: usb: Changed function parameter
 name and removed braces
Date: Sat, 21 Aug 2021 13:16:05 +0200
Message-Id: <20210821111605.8236-1-niklaslantau@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Original-Sender: niklaslantau@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gEdGdhiY;       spf=pass
 (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=niklaslantau@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Changed parameter name from __us to much more typical data
after suggestion by Joe Perches. Fixed minor coding style issue as well.

Signed-off-by: Niklas Lantau <niklaslantau@gmail.com>
---
 drivers/usb/storage/usb.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac..075c4531b96d 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -295,9 +295,9 @@ void fill_inquiry_response(struct us_data *us, unsigned char *data,
 }
 EXPORT_SYMBOL_GPL(fill_inquiry_response);
 
-static int usb_stor_control_thread(void * __us)
+static int usb_stor_control_thread(void *data)
 {
-	struct us_data *us = (struct us_data *)__us;
+	struct us_data *us = data;
 	struct Scsi_Host *host = us_to_host(us);
 	struct scsi_cmnd *srb;
 
@@ -926,9 +926,8 @@ static unsigned int usb_stor_sg_tablesize(struct usb_interface *intf)
 {
 	struct usb_device *usb_dev = interface_to_usbdev(intf);
 
-	if (usb_dev->bus->sg_tablesize) {
+	if (usb_dev->bus->sg_tablesize)
 		return usb_dev->bus->sg_tablesize;
-	}
 	return SG_ALL;
 }
 
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210821111605.8236-1-niklaslantau%40gmail.com.
