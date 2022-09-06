Return-Path: <usb-storage+bncBAABBAVH3OMAMGQEJTA6ZWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 8090F5ADEAB
	for <lists+usb-storage@lfdr.de>; Tue,  6 Sep 2022 06:58:44 +0200 (CEST)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-1101032fd65sf5518103fac.7
        for <lists+usb-storage@lfdr.de>; Mon, 05 Sep 2022 21:58:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662440323; cv=pass;
        d=google.com; s=arc-20160816;
        b=UvDDVBn/R/1RA08xNszRym8GKW7ePvcMJAtRWT1rOJfY7hvXzMMXYDmeOOIVdgqFZv
         GdFS3egaVjAg3RKW9eRGt8b+0wdb2DsQeqYEMmOGrdf7XNuue/7zEeeomM+hhgdCH9F9
         thyT59nzBJCkP/v9fD1f9eEw3BIDDzQ12o0Tw/2stqAR2Bo7LxUDBtLT3Il30WW6oVvs
         v5owLqPD6tJpnIqVymnVZKOmT14A6a/7/sUCtqs6VBAshHcHKZfL9ipK7rQWlIRZnGP7
         rpta53fd7aM2uwKlNJbWo9M3Y9TQ+Rp7Bcrbtarmu+jlWLwO4dUlwSKakTGTECTn+yCz
         TOAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=HgO4WtMhuNVRLBXhRW27knqeXn+K6M5taGa19RAxme0=;
        b=G5M0EEA3pv8in4QEQ7CkjBAVx87omf2KCthS5oHauXAsQ7wJLflZEG7HOyvn8tLdIr
         PsOUqFgs54gQPT/XXT5HB8P2sn8f5OQHV4b3HNA8wHWGY7UjGs9wLFdHvFj7oXVJlbpa
         uqg+qK8NQ3T0wX4rGNaNhwiEGpAjgjIhk7IfY6gRPkpFdlc9Ic1GcmDd1LUXNSwyh01k
         FFiMT9edh5ZJWJ+L4UUA+r7cTeEZe7H80VpMUrGQ4aPGpg6JmcF89995KGaV63MWyMhO
         UbSjZZmoTM4yDOiO58z5/Xh0iB7Siz4Wkx4ozUz4aU9/WHvuaSQ1hgwp8LPIkrY2Oe2R
         tX+w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=HgO4WtMhuNVRLBXhRW27knqeXn+K6M5taGa19RAxme0=;
        b=PrR03jRdKCVTRXgzxAjOkXmzABHOTi2gYf8C5hMp+UwLuHUokrqwo8si/HeE8+aCjs
         5jiyjG4JFULHYM6p/3W54J+IQeZaSUmkkk2ckky0HXGzMH5ZtUuyv9jxWL4+uuc1AuAD
         hr6yJFQot0ZNVrYes/7gucdZM6Uymq7S97gJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=HgO4WtMhuNVRLBXhRW27knqeXn+K6M5taGa19RAxme0=;
        b=d5xM9JvbTNrE6iWU5uA1gPlmuvk56Qhpg6g0dZ+wZalGL278LIZo237M7JSeSIlZ0K
         18IR7m6IIKhu0VSYOcbT91Yox46IqunQi8gTIKpK7Ghy7cc8hpc34lLXR3RwA1NVai7F
         a23vHRFA33xupAZ0gV4qMK8GtXBR1Uf1MFF3mOcxIxTKTPPH9Y9XP9+JfC5ZlYcrNPsg
         5E63lK/gJiJGzav0weHy/++Bfa4x7QXTz2hZgLyslGjA/vgfdGr9ufVa7EEE25w4c3fe
         0DM5zTTO/czfanFpveMXpVChRnMThwD4xWHj7gv1icw18idvIcS0nFQWdMlOyt0LTnqh
         DoMA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1vKhQ0w2e9nsib1CNfdpXTcFm0VQpyrsfAoYJjueLfKMJp0nTm
	Fd79Rhq9vRfKMgAIamckGB/CwQ==
X-Google-Smtp-Source: AA6agR7d48Qj2BWLJ5PBN3jnUOiM9EkSOwRNNfcIb2V08pFhsfhlS5TmC4+EETFBamOfKLV249gkpw==
X-Received: by 2002:a05:6870:4193:b0:127:3eb7:b99b with SMTP id y19-20020a056870419300b001273eb7b99bmr5017581oac.157.1662440323035;
        Mon, 05 Sep 2022 21:58:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:7d13:b0:11e:4261:68e3 with SMTP id
 os19-20020a0568707d1300b0011e426168e3ls5075266oab.6.-pod-prod-gmail; Mon, 05
 Sep 2022 21:58:42 -0700 (PDT)
X-Received: by 2002:a05:6870:348d:b0:10d:f499:93cb with SMTP id n13-20020a056870348d00b0010df49993cbmr11010715oah.224.1662440322584;
        Mon, 05 Sep 2022 21:58:42 -0700 (PDT)
Received: by 2002:aca:4406:0:b0:342:eb60:4210 with SMTP id 5614622812f47-3499d5a36f1msb6e;
        Mon, 5 Sep 2022 20:27:49 -0700 (PDT)
X-Received: by 2002:a17:90b:3c48:b0:1fd:b6bd:8d2a with SMTP id pm8-20020a17090b3c4800b001fdb6bd8d2amr22746942pjb.159.1662434869018;
        Mon, 05 Sep 2022 20:27:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662434869; cv=none;
        d=google.com; s=arc-20160816;
        b=g3NSH+eZR3oVQ8F2/4Pi0DCEsTGISuAG0U7m64KQzYm18ngg5EHq/D4G6JW1t/wg6f
         jUzHOQNVHJMJ9NSu1m0toWI3427nYg7xDIuDRM8XoSEoc4kqZHTLgw0IH5TbBpxDtBAV
         lV/RhF/XUCRq32/wi1GR0NBQkRCIDlJyZeeyuPiLU0PHzTYKvG3NkFa7vYLRJrdWp8x+
         RXi3vZHfw4rpZQtnyASd1bs03Uw2CjYn2cqtVg1YjhSoWCOJM0xRyqGGkWZsEe5gNv/r
         guX8uMFwqBvyMJM2EfdlVrxZVyarGEWcBvQAvJQCIx2n3HgJM+q7wN9Q6LDOGCYmRTA0
         E7Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=fsVtrT3TRKYhsjXYrn1UVxA4MbawTmwglOPg6cJ5U1o=;
        b=DXZ/XSthZkyPcOh3Y839OPu+W9+uJhyN2yMCW4lj+qviPHtdrR96CTE8wvvKrlvCqr
         d08KPoBeDADoU17wO1G5kNQc4HNT8qja+4TmZCHrL5fZFGdU9TB0gQqVRaBc7e4bKxpU
         KfuGDOX4L0JuN+RieB7Hmti2sR4Ovl1TOmbh2KXvV6Qvyi4YNkHXD8Y3eKZ6nZWla96h
         MvkdfJfq/aVj8cmj5akzkFQeaDW+Ewk9hsfoNTSjSZUlhi8uLqrl7M1JLtdtYZgoxEH8
         EN+htF/lO6jif/9CAA/c/CoAwCotyDMsS9iQUL8jfm1jGV9pSCOQIJETdt7KYhS0SHRU
         +OTQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id l11-20020a056a00140b00b0053bb934ef6bsi1158332pfu.301.2022.09.05.20.27.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Sep 2022 20:27:49 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 8f741a944b3f40968e60ae5334a07ee6-20220906
X-CPASD-INFO: 13a9b898c1e24abdab9142087e07c898@eoObWY9qZ2iPUad-g6StnoGTaWFkXlC
	HeZ9QZ5FoZViVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3gHWbWZRmaQ==
X-CLOUD-ID: 13a9b898c1e24abdab9142087e07c898
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:141.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:2.0,SPC:0,SIG:-
	5,AUF:13,DUF:4113,ACD:71,DCD:71,SL:0,EISP:0,AG:0,CFC:0.167,CFSR:0.2,UAT:0,RAF
	:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,EA
	F:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 8f741a944b3f40968e60ae5334a07ee6-20220906
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 8f741a944b3f40968e60ae5334a07ee6-20220906
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 442656841; Tue, 06 Sep 2022 11:28:09 +0800
From: zenghongling <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	zenghongling <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Date: Tue,  6 Sep 2022 11:28:11 +0800
Message-Id: <1662434891-5160-1-git-send-email-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.1.0
X-Original-Sender: zenghongling@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 124.126.103.232 is neither permitted nor denied by domain of
 zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Content-Type: text/plain; charset="UTF-8"
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

The UAS mode of Hiksemi USB_HDD is reported to fail to work on several
platforms with the following error message, then after re-connecting the
device will be offlined and not working at all.

[  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
                   inflight: CMD
[  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
                   04 00 00
[  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
                   inflight: CMD
[  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
                   00 08 00

These disks have a broken uas implementation, the tag field of the status
iu-s is not set properly,so we need to fall-back to usb-storage.

Signed-off-by: zenghongling <zenghongling@kylinos.cn>
---
 linux-4.9.327/drivers/usb/storage/unusual_uas.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/linux-4.9.327/drivers/usb/storage/unusual_uas.h b/linux-4.9.327/drivers/usb/storage/unusual_uas.h
index 2fc6787..bf0bb79 100644
--- a/linux-4.9.327/drivers/usb/storage/unusual_uas.h
+++ b/linux-4.9.327/drivers/usb/storage/unusual_uas.h
@@ -141,6 +141,12 @@ UNUSUAL_DEV(0x0bc2, 0xab21, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_ATA_1X),
 
+UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: G. Richard Bellamy <rbellamy@pteradigm.com> */
 UNUSUAL_DEV(0x0bc2, 0xab2a, 0x0000, 0x9999,
 		"Seagate",
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662434891-5160-1-git-send-email-zenghongling%40kylinos.cn.
