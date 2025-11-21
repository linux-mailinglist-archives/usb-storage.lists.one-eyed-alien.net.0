Return-Path: <usb-storage+bncBD64ZMV5YYBRBQVTQPEQMGQEKDH3IGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 390A4C7BBFD
	for <lists+usb-storage@lfdr.de>; Fri, 21 Nov 2025 22:29:40 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-4edb35b1147sf59435661cf.0
        for <lists+usb-storage@lfdr.de>; Fri, 21 Nov 2025 13:29:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763760579; cv=pass;
        d=google.com; s=arc-20240605;
        b=ImjyIasQUv5PBBmB1GH7lPgSZobYG6jgwkyzO938vw13OK/a5pug3Yt78wTtPrPpyE
         3Ci2JeRS/YK6tm36JiU8j17PSHVCnxToMsecHdAfXaiTud2CbWVSqZnPo867Dg+n+yMK
         iXksu+iBbSqea+6jzYuDKjE5AL1dqUySTL5qmloNyKvydD5tgQh5Zme4ajxfigIpVFcC
         2aZwfOsXXOsGh9Yo+zM5yvag6czDORMznWVnGUs2blttl1MwLgCQcXtfbMcVgTfrZxG9
         +/K7tyQV3xzFaPECw4QtUcUr+pSi3fMQz+X33v1XyaA9KLdB3a691c4TAoL3FnwIAEWg
         nuVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4n/WWOA8CBgIKjjlh16FM8oTQdUhex1hG59RkM21jTQ=;
        fh=xrAa720YiwbA59l2RBxAzSpat2Ky74wpsr3/QfnqFOU=;
        b=B9zialy3dVxg8vjrj2a8OBuZ34Z8hFCEJxgFDu8iVdl45Wx+I7OyVE/e7iHrmpls0b
         YzZf8J515JJf0noFQHTZjJmhn580vHnwQc+WkBX7FNROoumyjg5nHDp4NlUVx9QNhHY2
         CxO+0StF+9WEgIt3xdX5fNgg9ygo7YSuY4V17wNhvopl1QK0JGZJDZvgkfG5aQUhX/50
         2aeq3GXn0tj/arwkQP7lLYwJpUaYJ9xmmT6Wyhb9duROanwcI1GftgcO9kgfz8sPoDff
         kPyU9vtFREH7eoIVNp1SdRc7ZEhbIwjJVEWE+gMUWW0eBjVaXoQTfHJuELGstw9KnoMw
         SaVg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=rEhrJW12;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763760579; x=1764365379; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4n/WWOA8CBgIKjjlh16FM8oTQdUhex1hG59RkM21jTQ=;
        b=id3LhUdDmUQtKLV8vozhT1NFMDpzEhrRw8wlTvRQitSA/roP3Bno9LpR/yEbskkptV
         eWDX7rKQktCxypGTawvkUptYlm2pAnvGeB0jd3ZEjNMI81mRQ10k0wtEBAnpR2qB8s0v
         Z3tgH4C6LthppOmLAKeQwWz22COZvBiqICio0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763760579; x=1764365379;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4n/WWOA8CBgIKjjlh16FM8oTQdUhex1hG59RkM21jTQ=;
        b=blTWVce5HWRLXMvVlTUJVFihWLTgm4gFQId2sSLyZz5pOF/N90ci/BV0WwgLZSPP7U
         t588A9TYMeYxqSxL2LhNShfUt0E5a/UjplRT4Z5LftYWcJz1zZnzFDakmCzjetYFFo00
         zB2vf2V97o2GMES0K+uHVJkitQBs5IBgXZuQqQ1afxq5ZM/lIMEwkYC1VNbYFzNP1WaL
         +V48q8k1xDDnt1wnhUYCPbwZs7ieH+p9isy0R+d0sRe6ASimrAmZOW3NdG7TU0uqfiFx
         Dskl97t3guLBLAhPe8KjKpNHZRkhmjegGlfWm3ZHwneGz9+/4KF5b4pq0KHoxy1DblZL
         yJ1w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU2Iiog5+HU2X0kPFvb9CDJgExCiL3nJ1HGqrry50wsOuZgajk113c8veMXtbLd+s+BLCDGuA==@lfdr.de
X-Gm-Message-State: AOJu0YzZdUr7qLDdgqDh+OKgX2c74O46k1X3u5S7osvFJoWvEYVX16Q8
	9qR29m1Qx0QIgRra6f2bEkW0UzGPVYYx4Ao3jbAYOIdlxMkefmM8t/UriGbXby0E+sI=
X-Google-Smtp-Source: AGHT+IFAKirK0cX1pPBu/9hkHKFu6IfRECcwSsJZmUdG/6h/WMgU59jZjU2rssZxVi82M9np8mRDRA==
X-Received: by 2002:a05:622a:190f:b0:4ee:fe8:9348 with SMTP id d75a77b69052e-4ee5890e8d6mr54511231cf.72.1763760578973;
        Fri, 21 Nov 2025 13:29:38 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+a2VSULMdO7aGUwGIr31+asd5RLdrDzae86zxvND9w7bw=="
Received: by 2002:ad4:4f34:0:b0:880:59ee:ba5 with SMTP id 6a1803df08f44-8846da6aabcls41300006d6.1.-pod-prod-02-us;
 Fri, 21 Nov 2025 13:29:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUtCxV7rR5FY7XRVqCIlrwxwgES7/BOZF8Zd/2oL3u8H5IOjCfOxd6RyJErnlS46ahLm6NxZ7CYMv+vpw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:f06:b0:87c:23f3:5651 with SMTP id 6a1803df08f44-8847c57ddccmr60283246d6.67.1763760578016;
        Fri, 21 Nov 2025 13:29:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763760578; cv=none;
        d=google.com; s=arc-20240605;
        b=ZUFi4Zd9vmi6i9gD0qf7iddedA5O/TpuvKxa7yq/ERKEbBUB23S1ilBE2uLakJH8zz
         b5SUZhVIJP2ejHYVWZE2+vxIP+6GVkOAnqjbMmKXggMnF5nPpWiy89xsDuzR6ctu+jiV
         yUqj9oDhaSu2pMc4b0L/uI+TJd+5n/FkcBqtiUMJq1QbnoWfqSLoz+HWe8GG68pKc9WW
         y2V/r6VycNgOa6CcQlMY6uOnV9XgkbF26EGaEDtpUkMpLKHwX9BpINwi+hGRN4/wZdzb
         6wpVUqMW2Y0P9LCbCY26qzVwr+SF96kLdb/4VVO5puVSWEqz8O1Dwke7PR2L7StUxXc8
         WV6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ObNMRgWraNV2+kVy9Ahs5486O+aHiHMvo/bApSprMSw=;
        fh=Zt8uuEDt0RImN1zz71vZwCmUz7xvCli2Y6d59hqyb4Q=;
        b=GknUgywUPZ02ZjV5Y51u/XE42TUN1Dw9laM1aEhx+F613OpNgetigezhh1jzk/d0Kg
         S+2PJs1BrIQivPxTw6DQoK3BwIFhjKYNVEoau/lN170hiSwwd4g7+gT813WQXFg7jP6H
         hhMpCgBsV5F5doAY2df8YusDqmFvdNC7ySSWc+B14T7sG5TGR7RB4AC1m04b6nc8+LIN
         pGiZkayHtIjiGFsESvtTdkBmXk4ZFNMSZuKXv3wtFia02gcAdgsS6ez34AW8EyxqJs5O
         w0yMFFt+SicOStmlMo0ju/Gg0JgnbbTGmo4MInJ5MNi+9kLl8cIm7UcEF6M33L01Qwwj
         W5aA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=rEhrJW12;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 6a1803df08f44-8846e45c814sor27940296d6.3.2025.11.21.13.29.37
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 21 Nov 2025 13:29:37 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUd28Lcm+/sKd9gRmMnNWnCaaVl3PtVD7svyPwytxBq2gh5ZkjHAWdDbpaKQ6W6qFl2s879f118oARK0g==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnctLr4OZtPgudcKqDe2D003aa2c41ncPB9sxuXci04uKOQomBCPe+sQ9vHRcNqn
	AhMzJYaEsSKevmLX37vWCN1csrExH6BAjJzjZwZXJOsPPnND4OavZJin/HHChbk1YyQa68q6FIx
	50W8pkxIju7dnhBjOXr9Ckt3+yq9X4O8oJt65nPRjG/r7Da49wCseytYHg6C+yejIf3TM3Tlw0p
	GHWTgFx1kZrv7spORHFAenkWMbku0cGnkaQ06O9lWR4uWYk1GGzAjQEWsWuHs+B6uHaLBUWpCTp
	AH3V8g4XiYaPCVSLuFebb4sngwP1DHcIbAV0QH1Ui414oLT+hbCkrpmqOisa3AVjOZHU6LIFgd6
	+j7gcM8YWgOWrUFfnDivaT6S4rale09KwBojo8X3l8H+qZPHrlsNSBrhM9zvBvqGe/HGvOmo6BB
	TKJg3M73j6HUsf
X-Received: by 2002:a05:6214:3286:b0:87c:268d:bbda with SMTP id 6a1803df08f44-8847c57d13bmr51179466d6.60.1763760577655;
        Fri, 21 Nov 2025 13:29:37 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::7632])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8846e446458sm45606886d6.12.2025.11.21.13.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 13:29:37 -0800 (PST)
Date: Fri, 21 Nov 2025 16:29:34 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Greg KH <greg@kroah.com>, stealth <oleg.smirnov.1988@gmail.com>
Cc: Mael GUERIN <mael.guerin@murena.io>, linux-usb@vger.kernel.org,
	USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] [PATCH] USB: storage: Remove subclass and protocol
 overrides from Novatek quirk
Message-ID: <b440f177-f0b8-4d5a-8f7b-10855d4424ee@rowland.harvard.edu>
References: <CAKxjRRxhC0s19iEWoN=pEMqXJ_z8w_moC0GCXSqSKCcOddnWjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKxjRRxhC0s19iEWoN=pEMqXJ_z8w_moC0GCXSqSKCcOddnWjQ@mail.gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=rEhrJW12;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
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

A report from Oleg Smirnov indicates that the unusual_devs quirks
entry for the Novatek camera does not need to override the subclass
and protocol parameters:

[3266355.209532] usb 1-3: new high-speed USB device number 10 using xhci_hcd
[3266355.333031] usb 1-3: New USB device found, idVendor=0603, idProduct=8611, bcdDevice= 1.00
[3266355.333040] usb 1-3: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[3266355.333043] usb 1-3: Product: YICARCAM
[3266355.333045] usb 1-3: Manufacturer: XIAO-YI
[3266355.333047] usb 1-3: SerialNumber: 966110000000100
[3266355.338621] usb-storage 1-3:1.0: USB Mass Storage device detected
[3266355.338817] usb-storage 1-3:1.0: Quirks match for vid 0603 pid 8611: 4000
[3266355.338821] usb-storage 1-3:1.0: This device (0603,8611,0100 S 06 P 50) has unneeded SubClass and Protocol entries in unusual_devs.h (kernel 6.16.10-arch1-1)
                    Please send a copy of this message to
<linux-usb@vger.kernel.org> and <usb-storage@lists.one-eyed-alien.net>

The overrides are harmless but they do provoke the driver into logging
this annoying message.  Update the entry to remove the unneeded entries.

Reported-by: stealth <oleg.smirnov.1988@gmail.com>
Closes: https://lore.kernel.org/CAKxjRRxhC0s19iEWoN=pEMqXJ_z8w_moC0GCXSqSKCcOddnWjQ@mail.gmail.com/
Fixes: 6ca8af3c8fb5 ("USB: storage: Add unusual-devs entry for Novatek NTK96550-based camera")
Signed-off-by: Alan Stern <stern@rowland.harvard.edu>
CC: <stable@vger.kernel.org>

---

 drivers/usb/storage/unusual_devs.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: usb-devel/drivers/usb/storage/unusual_devs.h
===================================================================
--- usb-devel.orig/drivers/usb/storage/unusual_devs.h
+++ usb-devel/drivers/usb/storage/unusual_devs.h
@@ -938,7 +938,7 @@ UNUSUAL_DEV(  0x05e3, 0x0723, 0x9451, 0x
 UNUSUAL_DEV(  0x0603, 0x8611, 0x0000, 0xffff,
 		"Novatek",
 		"NTK96550-based camera",
-		USB_SC_SCSI, USB_PR_BULK, NULL,
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_BULK_IGNORE_TAG ),
 
 /*

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b440f177-f0b8-4d5a-8f7b-10855d4424ee%40rowland.harvard.edu.
