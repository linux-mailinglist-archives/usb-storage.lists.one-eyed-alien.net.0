Return-Path: <usb-storage+bncBCF6V4FDTINRBI5P265QMGQEHJCHJ4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A889FF541
	for <lists+usb-storage@lfdr.de>; Thu,  2 Jan 2025 01:02:44 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-46796f4d7c8sf189016891cf.3
        for <lists+usb-storage@lfdr.de>; Wed, 01 Jan 2025 16:02:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735776163; cv=pass;
        d=google.com; s=arc-20240605;
        b=h0FCVeM23dm4p1GCxDoUbRPKM+6tBtBk3cIEQgEIqb5zg/CGoqmjSk0D4UYZ5mE+LG
         6Pz6se8WIoq44aZFapzzrvCHFUaoU7CyM/i8aWrCTnTgdvnyRpsW+j+jtlSCnlfmEkqg
         cixmCDzSGN89slA/Df2/Mzjrf7CqiWmk1fI5I6K1oV69VdfHa4yHsGb5gaM3pam5Kz6W
         4nGQ6ufF7/eRp3ixVDTchIImG0sFeSwdyQx8lNxblTxMZwTZ7/2uygevgGeqX+/A1jH1
         ezHMOl7MvY48mZ0EUpzAFNoq/gcgVozNJgOuxhTFZBeN6+b3t6sq3webZeyE/wrnosmS
         CnqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ksL0YfMbBSS1x/oaPXq1x3W1cbk/cCNl9FkwQg3V9Lc=;
        fh=PNC06E6u3ZJMiuG6zN7EVoBrOOF42cXEGARgDCfxrEE=;
        b=ODUmcYTOShN6O73/SWTHVmkQeRqMoCMCl0aXxjm0jExBXKAS5p0pOeHdils5N/0Go2
         5pP7s9411dMA5ln1T2Xi1K1QdzEX2SSGkBKKpB6c89woTdw0J02HLXO9xGf/wGlO8XdI
         FPRBN017RWpcgyTf7bp9YQMhmW2itZx6HSyKqgl6EOKsfESpc3yAMmqYglPnAkcrJrmO
         cokCj2JI9zcEwKk2w6qdGCWICtlNGXp9IkKM+YFhsCX9LQI+z8YWsMAkJ7NdtkHheJvo
         4ivuKzMW0zRvU7U3tNmZ23rkKZKnfdFyEfMkUogxHw37R7IDMnkOSH5Wv0RssECLIBl0
         DL9w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=igxwh2+j;
       spf=pass (google.com: domain of lrintel@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lrintel@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1735776163; x=1736380963; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ksL0YfMbBSS1x/oaPXq1x3W1cbk/cCNl9FkwQg3V9Lc=;
        b=ScwORswrEClkSeyXXa6d/NP5f6Ust3rO/RePGAuMYcT+EL9WiY+WrSbuU99W3o7a7+
         oargWhzQEEyFHkP1K9SHJXmawzZ/fH6m7ltrPfbF/eNcG0QkV4lP/KQ5vtIFEpB8NlQ/
         oy1x66DxydcrlkA65yerOqzlX2vVUTFgXCER4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735776163; x=1736380963;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ksL0YfMbBSS1x/oaPXq1x3W1cbk/cCNl9FkwQg3V9Lc=;
        b=JAjzKVgLWUPLJbC00KtuHdYFl6PKhyAumD+f17gYeWfE/RFIpYm2ck8BvvSw2bMhAR
         Z16fwriQAE3GsMeGR29l3BRnenvVPQRVi05TKPAwZyaN7/OeKXvcqctBr/ioFrixUwpU
         vKuvELifb1W1YJG6fiM6Cv8WVfPcS/QhR+9pIYGJPTZ97jvdtIR1+Gsqi7EYI8MEiSAm
         avHUMMefjvpVDE1rnZjz2WKmVaqdksMd4vgbPJFRcSFqBHfeKu6Lw+LRIp/6K5HjWCDV
         rKuxLUfsShJ9h4CKo2FKRNADzcZ0QbqaFQI2BNzy1ivgOXcuj/sDLhGxJ1qS9DP8TEZ9
         RpZA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVE0rs9s15tk4JAXe8fC0KfJlU9pmKdAl5AmVQZOcZZIwv3tNd28WYqcadlv1iDDIdYWSDHDA==@lfdr.de
X-Gm-Message-State: AOJu0YwMVitwq6Jp3g+Mm96YmdLto4O9bwNFN3OS8R0XBULfxIJ4jwPM
	J1siuczCRZ5IK/Da3rZ+VPbks5rvz2gDk/N+JhSGW7vKwywqSpneR0Er2kg0Xck=
X-Google-Smtp-Source: AGHT+IFsrU0rCF9WVBDa0MCItzdCKpUPbtOe/eJ1yPw0sZAmeQ6XZH2FtucEqN6A7Lqe7rGQvDyong==
X-Received: by 2002:a05:622a:64a:b0:46a:65c:b589 with SMTP id d75a77b69052e-46a4a8c5beamr621604671cf.6.1735776163503;
        Wed, 01 Jan 2025 16:02:43 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:256:b0:467:5eb7:7178 with SMTP id
 d75a77b69052e-46a3b198c88ls15680121cf.2.-pod-prod-03-us; Wed, 01 Jan 2025
 16:02:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWnqS/tMsIqND83Baq+SIFf0d8h6i2TCzOyenb4y1gmOwlhv/jSobLA5ZQ9NJ/gUF38DzUd+oiSH+GZWg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:28b:b0:467:63a5:fb9c with SMTP id d75a77b69052e-46a4a98a203mr821712721cf.44.1735776162880;
        Wed, 01 Jan 2025 16:02:42 -0800 (PST)
Received: by 2002:a05:620a:1258:b0:7b6:d72a:7c26 with SMTP id af79cd13be357-7b9ab36d14ems85a;
        Wed, 1 Jan 2025 13:22:14 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVKmTKHtmpoAzNn+BdhF0b0Lfz5QT4vxadJEyANbiL+MOsEx4UWu4WBNVLQ+C8/xs+mojdyt7tizQ9wmw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:3213:b0:6dd:d3b:de39 with SMTP id 6a1803df08f44-6dd23345b65mr794089266d6.14.1735766534248;
        Wed, 01 Jan 2025 13:22:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735766534; cv=none;
        d=google.com; s=arc-20240605;
        b=XKTobY9Ru/oADq0J/xw9dyhqi6Yu/zjwsgNkmHkNl6LVd5n1ZVhILN4V2ri6AM/Q0I
         l84qUsMgQeSrsZbfq7Vz3K4XagcLcCbl/fPuuWgLDZm8e1A7XOsKcuQZaS5O71IqiJ0O
         gZLud6bhLGnqG5gc+Jsfzbzf1FgDbHdH8OoCN0Hxfd1dTuXrz/52/RrjExbOprGegXpe
         pA0TlRwQI9xpU8QnTE0up2oFL6FqAnnaTxJVPluGNAu70aNQMb0xM818qjh39BW+jXIW
         dBvIVgA0L+0s/fDVeAYXvMPmIj16lDHJtIZTMuF1wndQJvp7oHVj5yggO1FSfmkuEHVP
         8dPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=v2qYS4NDZTf6Vnz8Q7jkBwvtUek+QEkrIScYmX1jbP0=;
        fh=spMeSOLFsQyJz8fB2cHDhK2eO1S/dk9GPC/kUXE+O0E=;
        b=H44fQ03xzq3xIO68tlRTBm5eKYaFl3qpmGc31zNUWNBAOw2XzgpWC49+aZZINZbWIa
         7h9nKTf28zmbI+TCNItICd16dvrV0/9FxlExtzOR9s4YzkmCMBuOu8eZw+DvN2euqVcm
         WV2cZIEjthzI2wp29ZTTk4bubqYobpcDVAhrkhKiht0xZZqGwhEDmURz2RWcs4yre5vK
         cG67FyxmDo74eLQ4xjmRIx/YYKr1iN/wbV6rltlsNN+N6SP/jZthRH4ooy1yuWGcpk2Z
         dQzk/DFtybqKw7mMgVYU1F1fICrIcljtAw09EIKsTCA9ADICix/jh5V4abXyiLWPl4kn
         Ouyw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=igxwh2+j;
       spf=pass (google.com: domain of lrintel@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lrintel@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd1836fb3asi321777646d6.509.2025.01.01.13.22.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jan 2025 13:22:14 -0800 (PST)
Received-SPF: pass (google.com: domain of lrintel@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-480-6o4pKvSjNHqHZNq-z6wlCg-1; Wed, 01 Jan 2025 16:22:12 -0500
X-MC-Unique: 6o4pKvSjNHqHZNq-z6wlCg-1
X-Mimecast-MFC-AGG-ID: 6o4pKvSjNHqHZNq-z6wlCg
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-3862f3ccf4fso4485794f8f.0
        for <usb-storage@lists.one-eyed-alien.net>; Wed, 01 Jan 2025 13:22:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXSfOh2ct6CLh2QLcjKf9bnRHvCBtMFgtuqMkFy9LzVQzsoEd3Wup4lDafg3jHr3zeGbdHUeqfuMvRzZw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuJr1jlcYOm0AWz/JvuYg+Uea7PH4HXTn+F2Slzn5613InGlQeaL+7GwOFdti6
	iFi5BRyc1Bgxge5kb8yW/xxLHcH4LuDnv8Vba2PTG1m8cUTBtT/HMo6l/5MW8/8J6kRYxBzt67P
	pa4BrOB0V5sRO7N8XRmyK6iXF2/yYMIyFryDRDqocazlEt8W6s7nG0oVzK7A5YxaDqW+C2rg7LN
	tC1NRv3bHWuP7TddxwEQJfwUTMuhF++OV3xOx8gf7MedZAaZ1oVnetOUQDn62RWaL5dXlnt7Mga
X-Received: by 2002:adf:a341:0:b0:38a:4b8b:c57a with SMTP id ffacd0b85a97d-38a4b8bc5d9mr14053203f8f.44.1735766531563;
        Wed, 01 Jan 2025 13:22:11 -0800 (PST)
X-Received: by 2002:adf:a341:0:b0:38a:4b8b:c57a with SMTP id ffacd0b85a97d-38a4b8bc5d9mr14053188f8f.44.1735766531139;
        Wed, 01 Jan 2025 13:22:11 -0800 (PST)
Received: from localhost (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c848a47sm35893449f8f.62.2025.01.01.13.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jan 2025 13:22:10 -0800 (PST)
From: Lubomir Rintel <lrintel@redhat.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Lubomir Rintel <lkundrak@v3.sk>,
	stable@vger.kernel.org
Subject: [usb-storage] [PATCH] usb-storage: Add max sectors quirk for Nokia 208
Date: Wed,  1 Jan 2025 22:22:06 +0100
Message-ID: <20250101212206.2386207-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AUUN67MrFkz8ZoW1SaxW5013EB2QfPUHjcs_ir7FJNg_1735766532
X-Mimecast-Originator: redhat.com
content-type: text/plain; charset="UTF-8"; x-default=true
X-Original-Sender: lrintel@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=igxwh2+j;
       spf=pass (google.com: domain of lrintel@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=lrintel@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

This fixes data corruption when accessing the internal SD card in mass
storage mode.

I am actually not too sure why. I didn't figure a straightforward way to
reproduce the issue, but i seem to get garbage when issuing a lot (over 50)
of large reads (over 120 sectors) are done in a quick succession. That is,
time seems to matter here -- larger reads are fine if they are done with
some delay between them.

But I'm not great at understanding this sort of things, so I'll assume
the issue other, smarter, folks were seeing with similar phones is the
same problem and I'll just put my quirk next to theirs.

The "Software details" screen on the phone is as follows:

  V 04.06
  07-08-13
  RM-849
  (c) Nokia

TL;DR version of the device descriptor:

  idVendor           0x0421 Nokia Mobile Phones
  idProduct          0x06c2
  bcdDevice            4.06
  iManufacturer           1 Nokia
  iProduct                2 Nokia 208

The patch assumes older firmwares are broken too (I'm unable to test, but
no biggie if they aren't I guess), and I have no idea if newer firmware
exists.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
Cc: <stable@vger.kernel.org>
---
 drivers/usb/storage/unusual_devs.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index e5ad23d86833..54f0b1c83317 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -255,6 +255,13 @@ UNUSUAL_DEV(  0x0421, 0x06aa, 0x1110, 0x1110,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_MAX_SECTORS_64 ),
 
+/* Added by Lubomir Rintel <lkundrak@v3.sk>, a very fine chap */
+UNUSUAL_DEV(  0x0421, 0x06c2, 0x0000, 0x0406,
+		"Nokia",
+		"Nokia 208",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_MAX_SECTORS_64 ),
+
 #ifdef NO_SDDR09
 UNUSUAL_DEV(  0x0436, 0x0005, 0x0100, 0x0100,
 		"Microtech",
-- 
2.47.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250101212206.2386207-1-lkundrak%40v3.sk.
