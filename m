Return-Path: <usb-storage+bncBCD353VB3ABBB7OE7S6QMGQEVAG42YI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C06A46228
	for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 15:17:34 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5fc10e8abebsf4765809eaf.3
        for <lists+usb-storage@lfdr.de>; Wed, 26 Feb 2025 06:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740579453; cv=pass;
        d=google.com; s=arc-20240605;
        b=kL1R0mhKxy6U/CKerTyL8YnMB4LbNNqG8j1kDWwuMFDPQ0MhVp/qBOl3YuauzRM4Jl
         e/aOVDhQVw/uw2eYSeFJYzVJLPQz+7WdKoRwe/IjJEpXz8fGJp1JhW3f8MEGPuX/7mN7
         YMHlGxt5XDbZkap2zfzArEmhe2hU8hPCEQBcVquswm/zPXtyYsXMOcjS80d5cRF4yh70
         LGV4E/ELsokw1X0Be0c7aNmHc1+sJt5UyVhpsTIBT9sbGsd2JH/rWt4ovKRrncTUGfnZ
         yAO65oXrgwxvAuMK1ZJ789Nhto7xFCiGlQbz5wGBXCjIeePD21n8+B5q14Vg8oIHRiFk
         YkUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=s6cIeHgE0mYuOaeXm/e+zOZFoE1cr4lgMNO0DlV7t4o=;
        fh=O+ubMY0D29Og/9ZPQ2J5XOpszsNX3GDZacND8VK7vkQ=;
        b=dS1qSQpPL84OtfN5+0sFWF3HSexfLzsgvN9kQBthIDSsmUSoB5CMV4NM5ZEj6sRUzU
         CKxnrZfhmUj9V39KNuT/lixzYaV+9uV4N4hESe6JGsIemd1yut+1+HTvIJHbGZPq57vR
         cuK1ZT8swcfUOLS3q0MDXZSfTQFOHpmBQyOVSkAr2ZjhQMaXnkPNrXhACnZ9UKQk1puf
         VZ51GmDFCw/oLFTF3H/NYx+6oxzU2zXZ3JPLTu86LDU8ZzRS0piJR8aQI5E3Krz2Olyo
         L2v4ckI9RsE2mBPZ1P2MuhYjyebbW0jx1P093PJOakHywF+vLvBDWXjjXKZ/j82sOjAO
         kFKA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P1TW05CY;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740579453; x=1741184253; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s6cIeHgE0mYuOaeXm/e+zOZFoE1cr4lgMNO0DlV7t4o=;
        b=aZh+8XM55RSdhmTGV5okBnQEnhUcmhQAY3BH7p7/8Ghg9QL2zy/njGIQJQVudlMSdX
         8mPc7Q9aTHHNBKymP4kItwjNQnwj1ge8Cn5Xc9OPpbWHgzLuOmfBd9+OBSltdDszviuq
         lvQpYOTFHbjdifnpuXjQeMEyziULLHEkoxc7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579453; x=1741184253;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s6cIeHgE0mYuOaeXm/e+zOZFoE1cr4lgMNO0DlV7t4o=;
        b=cqcAzfYE2cI6a1bHDwucv15MVRbo3d25p+iuErS6zP2LU+zG2GybYchA7vTFo7rdnh
         32xAm4K7B0azTtN10zw+3hhVPhdZyNAmkli3j9+9UG3TbjrGrl8EuMRc7ARs2Q/qX1WV
         5SEhdddTVJ99srOEIiIVfNzb2SH15ETdDUB91Hu0AXskmYgPnTT2plZ2247sq5vMalKH
         tQip+XA7A4oMOpWMIrMtNUQktpEFTg8FU8BQyX5rn42Ujn2Z3pDfZy+n3AEc9RtGQMoZ
         nszoZak5uc/lAyk9IQ3riiE8f5zwJL9Nu7VcapHa9pk0TbvkbWKJwWHiVrdXYUO94Jau
         1Cjg==
X-Forwarded-Encrypted: i=2; AJvYcCUbtkVb6rNomo4GOapv8xzYwptq1LDP1fIPldrYs3JZz+fbAq5/KSCkafQq6gRpcotFxW1oHw==@lfdr.de
X-Gm-Message-State: AOJu0Yyu85QStPFZJwApI8DgpD0mDaWqDq/jWe4mB5ALIUBEdK/z9MVz
	jFA6bVetfo2nE1KtAcDv4KxpP90HxpTmvQQ+dmMZvzniXOpkBpA0iMnblCRT/eU=
X-Google-Smtp-Source: AGHT+IEJ7mFbl7rIUF0uuC8+S2vbsg6oKQj1LqkM315Ub2XT1fG/htE2J8rVWwh8yue7C746WZvx1w==
X-Received: by 2002:a05:6820:4b04:b0:5fe:9c1b:e7d0 with SMTP id 006d021491bc7-5fe9d5e96a5mr1836026eaf.2.1740579453295;
        Wed, 26 Feb 2025 06:17:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVEAIoqFdcr+voFMeGBaxcNFxQbi9kFd4SmuUMfnlWofbw==
Received: by 2002:a4a:da14:0:b0:5fc:e729:44d8 with SMTP id 006d021491bc7-5fe9e4143d0ls422290eaf.1.-pod-prod-08-us;
 Wed, 26 Feb 2025 06:17:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWzbUSRtIRbeo4NYOGS8OYbwYKfh8+eXkU3owbcQoO1KF+WrBZo7DawVPn36PnohYltJNJ7P5a6xC2Vgg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:15a8:b0:3f3:bebe:ee3b with SMTP id 5614622812f47-3f547de876dmr2141127b6e.4.1740579452563;
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740579452; cv=none;
        d=google.com; s=arc-20240605;
        b=KUhoHAXPsmULOVgkrXjkpDIXtakBA5QW3xhkcaEAd2IPa+3EQ10XIsMi+SXLsm5MI/
         EiP9YZO0XSNmmR+/h/kX3v6Gu0mXCv55lBCh/JX4N/DqrNYup06O8RK21POEy7nQb7FK
         mLcyJfpnAn00ZAKEEOl8Yopsopor1pBwM7czwx3es7TCgnOYSF4G8unXQbJUWrB2FExw
         kCVtdZhtwgkuyRJBayjoSjrpjEMsvvs52PvonBohVtQp19SInegU9cOzg6NGhaPEUfms
         cmPfkJA5Ax64RlGwsYGWzIJLUDlOVYl0W8Zu5if22iDoMTNAcyWvf9UohTtltiqswfX1
         p6KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=TeaXPEyOJ0AsVeIxh7aygvskL5bt+eaGGPxztC5wv7o=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=WbAoKuI9OCthEbEzFktbLGIxFe6Sq8AwISzW/oNmDC9qpXbgYPcpyoEolBY2wINPOK
         MRwSBUauaNV9gseL2e+O6wHo6+ydNRbMFzd7M1EwmfbDWIJVnxoRzn5rRm1G6rRw5WnZ
         I/28KJpwJ+zay16VFwSh8sOXI7nOoDPypkzysiQOMm+r9ARFGHEAwe31r2md+OiwPKMY
         TzYBM0jm7ia4KBHW88+I6BxKKGlve3PBDMe7BHTX9OAsuhL624WrMNzg6gKK4gNAYsWP
         GMPvMxZFqiiwzTIz8zcxW8OmDBgqpXm6qOEkFqu4B403NFB6OWUd1mkbDsY2dkIBUf3r
         MoFA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P1TW05CY;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 5614622812f47-3f541c55753si2703120b6e.279.2025.02.26.06.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:17:32 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7F32B5C705D;
	Wed, 26 Feb 2025 14:16:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12B20C4CEF0;
	Wed, 26 Feb 2025 14:17:32 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A6F3C18E7C;
	Wed, 26 Feb 2025 14:17:32 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 26 Feb 2025 15:17:31 +0100
Subject: [usb-storage] [PATCH v2 9/9] usb: storage: shuttle_usbat: Use const
 for constant array
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250226-misc-const-v2-9-ab655a4a29cc@posteo.net>
References: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
In-Reply-To: <20250226-misc-const-v2-0-ab655a4a29cc@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740579450; l=924;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=v11yX1jHyBzwioDip32r3C5+SG/nGSwnzcapdw5f/+I=;
 b=yTY/YVeDIcz1oPqt/3tMNvIL+X+JBEfVSdcEGQiPavrbg/dA86vlZ53iZ8WWkrM27T2qUMCvW
 Ha2BVh4wvqKABomcpZw0heowIJEmh1Rc+/7B9NC/oZWKDzWpruJ3w6o
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=P1TW05CY;       spf=pass
 (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
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

From: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>

This array is only read, not modified.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V2:
- new patch
---
 drivers/usb/storage/shuttle_usbat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/shuttle_usbat.c b/drivers/usb/storage/shut=
tle_usbat.c
index c33cbf177e6fcaa80e0d2639594d1314c59f4950..27faa0ead11d1b0ee9e45ba6a3e=
e5bade8a416e4 100644
--- a/drivers/usb/storage/shuttle_usbat.c
+++ b/drivers/usb/storage/shuttle_usbat.c
@@ -1683,7 +1683,7 @@ static int usbat_flash_transport(struct scsi_cmnd * s=
rb, struct us_data *us)
 	struct usbat_info *info =3D (struct usbat_info *) (us->extra);
 	unsigned long block, blocks;
 	unsigned char *ptr =3D us->iobuf;
-	static unsigned char inquiry_response[36] =3D {
+	static const unsigned char inquiry_response[36] =3D {
 		0x00, 0x80, 0x00, 0x01, 0x1F, 0x00, 0x00, 0x00
 	};
=20

--=20
2.48.0.rc1.219.gb6b6757d772


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250226-misc-const-v2-9-ab655a4a29cc%40posteo.=
net.
