Return-Path: <usb-storage+bncBC72LGEK34ERBZFIS6MAMGQEE43ULJA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AED59F46D
	for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 09:33:57 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id z6-20020ac875c6000000b0034454b14c91sf12341705qtq.15
        for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 00:33:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661326436; cv=pass;
        d=google.com; s=arc-20160816;
        b=nq/PVD3IWCggtMfoNvSS15u1ESaju50EsDF6blaw8EF6PsUceFhxdHrX/qNMhbOAQE
         eLxltp489kL3e1bo9X9eBRdSb3xEI3o292D/N5ji2Sb0gtDVa2LXppUcHyKjqP7xwzqe
         sgSMoUiP4p+7XpXF/H2Z/VkZmsHD8ROw7BXE85o40U9WAo/kxFw0Rpf14qDO57bpSa3t
         6e47cNY/RuWVBsFJdgWL0v9ssyueKpbc6cCLbANQkqh7jogzC0/SnU367oFk75t08h1H
         YnHU1H1NUdwk0hpeZ7sRcNBlqgtVJVoESeMtCel4FM4dmKj+y1gn8Z9hCaFapoTxqYOR
         GjeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=1IZ6soDK3MWsIk1PG7qcT2WduC9oVsj7T93mux36vQQ=;
        b=SBh+k0LsXYBqR2fSK/rVQVTQ2R4QJsDpnHFNre6ZTxjsnxSgkoaWxniS4M30c8U2hi
         gf9lcUo3y92Jfd3V1l16q8yCgpj3AUOTN4zgNCKOLZGD3mDrZ6eyCLSt5fnZW7AmVcag
         E/AUji6KsA5G1X1M3uxRbv1SoxAjpZQskMT9DsnFZv0X4RNlfdyDqikcdX1jizUqmYbi
         m9pT6lOB8JYZ7LMwfNmKh6ne3tfwn7WDFe0+lj8riNJAOdSKo3SJtGTkzx7hMYaCNt66
         aPuhtNokQPEsoLdUNz+2qVc9RfrY5H3qoGePxfjpuav4ZGMDgKigvljJFaf6lOuwddTE
         y+lg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=DKMLrw65;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc;
        bh=1IZ6soDK3MWsIk1PG7qcT2WduC9oVsj7T93mux36vQQ=;
        b=YURAwMRMwoS/z1C2baA2DqzX6v6dmv0dC2rddqXHdPVZW+V0ZX6CEYP3JpXhUxuldt
         Z2+lnZMjslonUMyeWZFuSLxca7Q5aZJArNw6gP64DIDvFBI9HTGAv+1m5Ev+jTiZ822z
         fYBb/cHaYY6CQe2UUy9rbBQaGEVAJCOKO96iA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :x-gm-message-state:sender:from:to:cc;
        bh=1IZ6soDK3MWsIk1PG7qcT2WduC9oVsj7T93mux36vQQ=;
        b=tbG8odmYrDUR1cKiPNYDsutOzWkhe/7SGanog19JltybpwKHMd0wd8uGMT3p7140Vm
         fnlzNaU21UWAezqaS5n4sR1tjcRJxG0zUlBIZ+j6DzWEhOfZW51dEHe0YeHn2VyVEwRm
         cqwVrni9Zaih5LJbTqwqE4S+vkSwfmtO3Ux/DUkv9irYZiDBsqRGpZAH0u27/ohEsdFf
         UlxN9NaWglcyhkhKxoLpcxaumOB6nAtQLV2g6LgYBeGhkj18+SSOgVAXgI6ZvnhbSV6W
         KDuwpSsBejoKwob02s8Lr7XxaPwlteJL9vHLjRUhHd3L9oRq9100E0NfwwwT3dXRJSkX
         SOww==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0tNsSrUjuQW6xcUhu0duk1OUG/zVTZspQCAnEGzsl2tgSszOX0
	LAQE1+7X0JZwdUBZOQ+GDc0s7Q==
X-Google-Smtp-Source: AA6agR4tFm8dYT6ni5sjIDE8lwv9vyrYZdSeSbFodiQwZC/FLz1bAqC27lGStzyniMnxAKitrd4D9w==
X-Received: by 2002:a05:622a:58c:b0:343:5b5a:41ec with SMTP id c12-20020a05622a058c00b003435b5a41ecmr22578780qtb.377.1661326436188;
        Wed, 24 Aug 2022 00:33:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:1f2:b0:6b9:57ca:5d1 with SMTP id
 x18-20020a05620a01f200b006b957ca05d1ls9792968qkn.0.-pod-prod-gmail; Wed, 24
 Aug 2022 00:33:55 -0700 (PDT)
X-Received: by 2002:a05:620a:24d5:b0:6bb:bed6:18d3 with SMTP id m21-20020a05620a24d500b006bbbed618d3mr18330875qkn.271.1661326435742;
        Wed, 24 Aug 2022 00:33:55 -0700 (PDT)
Received: by 2002:a05:620a:458e:b0:6b9:5246:81fe with SMTP id af79cd13be357-6bc54e0c611ms85a;
        Wed, 24 Aug 2022 00:04:16 -0700 (PDT)
X-Received: by 2002:a1f:30cf:0:b0:380:73a5:366e with SMTP id w198-20020a1f30cf000000b0038073a5366emr11455824vkw.20.1661324655603;
        Wed, 24 Aug 2022 00:04:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661324655; cv=none;
        d=google.com; s=arc-20160816;
        b=cMrSy2NRms9vXlNXKGmpIcwJd66RsqCSmwjnDTbxbCm+tCkiKzdcGTVQLyT4WW+QOf
         h6aeJZy1KgYh0UbOiQhn98iBiBos2KUbim2vsEuERiMs7C6KGMXe5bwtyDq+1X+GSv+2
         UW3bgPBFoIUkzaUGOYIOSBTCI0sEXOlJNLiBeNDyv3liOg0diOQ6yyqSae2KLdrrVkAb
         gWYAqcxZU8Ozb3xSFWXcdzEHp24b7GpgKZ8nFDjht3YCmpcfeeMCetNqnnQKbbICflV/
         Si5/9nb/cMgWnJpuQGO0wQIml2+HR+Bqxl9q+s497SgJjkOwkVQhxbBBIB65plTqSMFS
         Z9FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=gmxARJAlUkyQH+6fGKHH0bAlh0NUfuwDjrtnJ6gLv1s=;
        b=GUKx0zEwui43jnuiJYd3JPRYjAqASsmuaKrtjdHh2O1bEo3P1RLN0WsJP+FZ36DIWz
         1ruBfkhXz6eTZy/HS7vx3CcaKe6mH+0iyp9o3kl/fl4uheTsS2L/knjyBcGqApTpiHqy
         842dIsH+9YD+F2BrIX8NbHSuDYDVJ6XErpwQFcKpq4bi9yUm1YEGMjaXITv9//MsSz+l
         BQHAsACy2ud7y3ld9ksJB124gnyRmmQU2zeapKsX6X2WPx3U4Nwi5E7H3ET/uLtiJe+k
         IM4ku+dok1kEvKdP3CwolJxke8VtB9jwZ09+NK2+0/cnsyB1aPB9cwZ4hobxe4Zhbtah
         JL2Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=DKMLrw65;
       spf=pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id m22-20020a0561023e9600b003585c1512desor5283629vsv.76.2022.08.24.00.04.15
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 24 Aug 2022 00:04:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a67:ab04:0:b0:38a:9cd3:d02e with SMTP id
 u4-20020a67ab04000000b0038a9cd3d02emr10829697vse.55.1661324655399; Wed, 24
 Aug 2022 00:04:15 -0700 (PDT)
MIME-Version: 1.0
From: Hu Xiaoying <huxiaoying2008@gmail.com>
Date: Wed, 24 Aug 2022 15:04:03 +0800
Message-ID: <CABd4UjZCm-EmqmD0z2bNkem8K138SV+Gvo90h9S_ckHc4QT5yQ@mail.gmail.com>
Subject: [usb-storage] linux-next patch
To: stern@rowland.harvard.edu, gregkh@linuxfoundation.org, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Content-Type: multipart/mixed; boundary="000000000000f12c9005e6f749a4"
X-Original-Sender: huxiaoying2008@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=DKMLrw65;       spf=pass
 (google.com: domain of huxiaoying2008@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=huxiaoying2008@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000f12c9005e6f749a4
Content-Type: multipart/alternative; boundary="000000000000f12c8d05e6f749a2"

--000000000000f12c8d05e6f749a2
Content-Type: text/plain; charset="UTF-8"



-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4UjZCm-EmqmD0z2bNkem8K138SV%2BGvo90h9S_ckHc4QT5yQ%40mail.gmail.com.

--000000000000f12c8d05e6f749a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABd4UjZCm-EmqmD0z2bNkem8=
K138SV%2BGvo90h9S_ckHc4QT5yQ%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb=
-storage/CABd4UjZCm-EmqmD0z2bNkem8K138SV%2BGvo90h9S_ckHc4QT5yQ%40mail.gmail=
.com</a>.<br />

--000000000000f12c8d05e6f749a2--
--000000000000f12c9005e6f749a4
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-KYLIN-usb-Improves-USB2.0-write-performance-for-Exte.patch"
Content-Disposition: attachment; 
	filename="0001-KYLIN-usb-Improves-USB2.0-write-performance-for-Exte.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_l779s2710>
X-Attachment-Id: f_l779s2710

RnJvbSAwNDBlN2VkN2U2ZTllZDg1MDU3NWVkMDc1ZTAyZDk2MGE1ZmZlMTkxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBIdSBYaWFveWluZyA8aHV4aWFveWluZ0BreWxpbm9zLmNuPgpE
YXRlOiBXZWQsIDIyIEp1biAyMDIyIDE2OjM1OjU5ICswODAwClN1YmplY3Q6IFtQQVRDSCAtbmV4
dF0gS1lMSU46IHVzYjogSW1wcm92ZXMgVVNCMi4wIHdyaXRlIHBlcmZvcm1hbmNlIGZvcgogRXh0
ZXJuYWwgSEREIGRldmljZSAoVklEOlBJRCA9IDB4MGIwNToweDE5MzIpCgpDVkU6IE5BCgpVU0Ig
ZXh0ZXJuYWwgc3RvcmFnZSBkZXZpY2UoMHgwYjA1OjE5MzIpLCB1c2UgZ25vbWUtZGlzay11dGls
aXR5IHRvb2xzCnRvIHRlc3QgdXNiIHdyaXRlICA8IDMwTUIvcy4KdGhlbiwgaWdvbmVkIHRvIGxv
YWQgbW9kdWxlIG9mIHVhcyBmb3IgdGhpcyBkZXZpY2UuCj09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09CldyaXRlIHNwZWVkOiBJbXByb3ZlcyBmb3JtIDI3TUIv
cyB0byA0ME1CL3MrCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBI
dSBYaWFveWluZyA8aHV4aWFveWluZzIwMDhAZ21haWwuY24+Ci0tLQogZHJpdmVycy91c2Ivc3Rv
cmFnZS91bnVzdWFsX3Vhcy5oIHwgNyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2Ivc3RvcmFnZS91bnVzdWFsX3Vhcy5oIGIv
ZHJpdmVycy91c2Ivc3RvcmFnZS91bnVzdWFsX3Vhcy5oCmluZGV4IDQwNTFjOGNkMGNkOC4uYWJh
ZjRlYTgxMzhiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3VzYi9zdG9yYWdlL3VudXN1YWxfdWFzLmgK
KysrIGIvZHJpdmVycy91c2Ivc3RvcmFnZS91bnVzdWFsX3Vhcy5oCkBAIC0xNTcsMyArMTU3LDEw
IEBAIFVOVVNVQUxfREVWKDB4NDk3MSwgMHg4MDI0LCAweDAwMDAsIDB4OTk5OSwKIAkJIkV4dGVy
bmFsIEhERCIsCiAJCVVTQl9TQ19ERVZJQ0UsIFVTQl9QUl9ERVZJQ0UsIE5VTEwsCiAJCVVTX0ZM
X0FMV0FZU19TWU5DKSwKKworLyogUmVwb3J0ZWQtYnk6IFRvbSBIdSA8aHV4aWFveWluZ0BreWxp
bm9zLmNuPiAqLworVU5VU1VBTF9ERVYoMHgwYjA1LCAweDE5MzIsIDB4MDAwMCwgMHg5OTk5LAor
CQkiQVNVUyIsCisJCSJFeHRlcm5hbCBIREQiLAorCQlVU0JfU0NfREVWSUNFLCBVU0JfUFJfREVW
SUNFLCBOVUxMLAorCQlVU19GTF9JR05PUkVfVUFTKSwKLS0gCjIuMjUuMQoK
--000000000000f12c9005e6f749a4--
