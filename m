Return-Path: <usb-storage+bncBCD353VB3ABBBKFEQ67AMGQEG42Q52Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 02577A49CD8
	for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 16:11:38 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-3ce3bbb2b9dsf25936465ab.3
        for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 07:11:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740755496; cv=pass;
        d=google.com; s=arc-20240605;
        b=aOQvWSDb/OAnPndLMuh8qp1jxgkG4z+CZpJ5XMzekHcNfbgAIMzC2LvwAHth08+bS5
         03ChrUloPmHmb4jTJJZrS0L8i1QjuCGQw4SfIUkkJj6PZ17mTEXgZa7fl9Z67iYFZ3BW
         U+Ltpc6B9QTQlI1JnZLsXxA+HJli5fv1Frv1gxq9nIizyz4BUPzYH7syAqMyIaAvkAGF
         FMM9ec6vSUrjuGN80gFdyaPPRqRUIaLftOi22guf5uzT56VkLv9AHa/uKsodEYP5HH8A
         HDu6Z2/Lor/5ZXPIQwxpSOdVfsMqmVX2YTApdEDCmdscwRo0A6r9bZRnoW44+R1DsHdH
         W7qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:in-reply-to
         :references:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=5hDl+bLNRZwM2fBNwJzjiJ9iz8A8wn70O7mmSgBF4lo=;
        fh=6RCniBxOcUV9qXf+yD9nbt96Odn1+7/5IHzGM1JR6uA=;
        b=U7GZ2AejNYmyxmPm5BJavFM+GR8+kd/dEyvhs9k20DRYAoTLkq+PDGH0BzMun/ZOMj
         J5wv0ibFDYUDc0rX4b6aV00q//I1yL/s7l90YEwsy0srJKjEabZWLqmnmLR130OOeQAs
         mWD4pDrG6Amc1k8Rf+eawI6SMfkGJmcVDaGx5bETb1FY3cyz3y/ez1jxZL0GF3wULKYS
         zEG2QKfvdeLl3gsbC/dGRqgnq2OhEdFspFcJ7kiyybo9QvfYkWt+gD9b1tizyK9Hh0SV
         bFWtlcl2GXE9U18mdg4K4gErTmeEaQo5fQ8kjjl/KifVxVaEaRpJ7DAI8tumD5xmYrZR
         6qWA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HTNcsXp6;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740755496; x=1741360296; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5hDl+bLNRZwM2fBNwJzjiJ9iz8A8wn70O7mmSgBF4lo=;
        b=IAVNL7c2AQsJ0hFcrDZFY3Cj2DRj/vWIVMT1bWOttZf/Jz8CVhDXSSQMM1aCDecBja
         6eybDeHxIwlS4xNCCICKhUdyrEbe6ry24Z2n1o5N7lWmzTNE+UYkGm/YuNZ3sCFnWiIh
         wGeOuL6BUnIFqViozAeQ2J/OCqoQlTNwv2kO0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740755496; x=1741360296;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5hDl+bLNRZwM2fBNwJzjiJ9iz8A8wn70O7mmSgBF4lo=;
        b=iAjlHHLm3SkL8krJPS8r2bsWpmBO6LDkJWEdd1tEzRLISmO1skDEr0Q+nBBH5BCPAC
         kTR95eYKMYVRsdidU0pm+cFB0fGy0C34vPv5liYhVFqtBqxaMStubm9m2SVI9kx+85ff
         46hu7BPldPFcdKqJwAPqG6pqXn1OQgKOItsvS7O5UtDhnXQr46RnhQRAJ9U7MJPP0JcT
         IzuSR/MsBUWtvgtaRLV8smzox+EfVO/lthFKhpbUbh0aeG035d4dtD1mGToP7o0RImxo
         mHjTt/3TN06hvq/WbRQrd3qYVjFYT6jovNo5uV0MA1vncBa4BQ5G7KotaqlrJE8mwte3
         9WwA==
X-Forwarded-Encrypted: i=2; AJvYcCUJEF7dAb6z3/L+5zYg2GlaiY6D/oQPYBDs8LbzYlofSYLFpCzUuj6IrI2qxD79NyZtvADF5w==@lfdr.de
X-Gm-Message-State: AOJu0YyACu79ggPqXDycs5Oi887h8DmLKV4MRMztxjpeALwHNEqBFGdh
	Hl0X9On1IE5fKz7+k7rY6V8HJ9POb7isL1D5EulHPAxSZMZKlEgcvWEFB+kRjxQ=
X-Google-Smtp-Source: AGHT+IH0bugQ72lZHFOlc1j+88zpKEtckzbAAU01WQdSTXWwCwAo62uOjRr4lwcSeCMDHWvQFwXh7Q==
X-Received: by 2002:a92:c545:0:b0:3cf:bac5:d90c with SMTP id e9e14a558f8ab-3d3e6f40318mr45900625ab.18.1740755496550;
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVFIeIF6vpVyI1qyPpuctOFGnXBuji7bE0N4TFZS7hid2Q==
Received: by 2002:a92:c9c8:0:b0:3d2:af50:1124 with SMTP id e9e14a558f8ab-3d3dd2316dcls9965495ab.2.-pod-prod-04-us;
 Fri, 28 Feb 2025 07:11:35 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWxOmO16R7NeubtpjUB/5hgUl5eREvttaAehsUEVVlMw7SGGhJZ/rEdmEONc4iskdP5Yyww/jpiAabrBQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:2608:b0:3cf:c9b9:3eb with SMTP id e9e14a558f8ab-3d3e6d53e74mr35908665ab.0.1740755495728;
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740755495; cv=none;
        d=google.com; s=arc-20240605;
        b=NRDGeR7kIS6XFQVx8gNex1OezVqllDM99/5VUNtXbwovytRWJ5xHVa2AtQr5IOgZn+
         I7TDj1LoulSHfem4fMVIBD96t1eU1y5K4b1YCY7LYwW3Apa2DT4mqkghGcTTL7hOXa9H
         TugNTV0bPdHikaHeurkuCp5HA4LytPKoLXXbE8+zKsioCjDKWdu4b+5JEvA28P709FiO
         zcPoyjpCi5gnSu/dJfvtONJ/o9f8mVpIH8M3ou24xNQtHjDIx/a4VBKcnnS5ATrCHOsE
         jOJH+Jc1a/YVYdfQSCLt/rtMSiOVmniI1H3IOu2kdB7HBoRem8eBLgXcvIHoqNHV6XKm
         vhdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:in-reply-to:references:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=R41BNczs8a672VNz0Li94MkHHZy0ebbtR9WYhx/MNDA=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=iXuSWw10loRpetkqzURpZzgzG5yLqVHIiZrwXK7MLzJ5deT6hWgvOa2fgdydrPGX4c
         dqyA5Bx819Jp6a5nfOcOqctIkUTZTM9xCq2gsAPeHD6Ht/aLMqkKX0fFota+g8hD5AXi
         I8Jtkato/7+fxq2FM/q2yT3Ay2cRBspXRdQhwZVSg4n27Bs8L9a6z7hYw6tyj0Ob974y
         6AYNsS88x1oEn8+UZ1hax+b9kQqtYTCA2edqJCsCcXGa65b/NMbh7Vu5OjgV2xk9F6ir
         Ni1UZph6LiPoS4DRQQdVsIgzv/uf6AT7P2v3nauyL23eWB73p15Y9G5xj3B1KHD8qJXx
         zwNw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HTNcsXp6;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4f061f8bb87si3789945173.111.2025.02.28.07.11.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6BA7F5C667E;
	Fri, 28 Feb 2025 15:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E628BC4CEE9;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBBA7C282D1;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 28 Feb 2025 16:11:19 +0100
Subject: [usb-storage] [PATCH v3 4/9] usb: storage: datafab: Use const for
 constant arrays
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250228-misc-const-v3-4-09b417ded9c4@posteo.net>
References: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
In-Reply-To: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740755487; l=2538;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=yfxYfaF8Q7PIxOVWEnYYboHL7YcgLcujoqn0SQzuem4=;
 b=JbKx0x32ZLzV6QqtxmDJURu77gmnOpKmN1kohJvtrdILXcI6OtZbOs9C5+mjbgi2BQLx08CP4
 Ovc0j/bPp/SCwW6sBmUDyP84ulfxo/kJP/4ih3aOhtHb9wpSKqz3BBY
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HTNcsXp6;       spf=pass
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

These arrays are only read, not modified.

Declaring data as const makes it easier to see what's going on, and can
prevent unintended writes through placement in a read-only section.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---

V3:
- elaborate why const is a good idea

V2:
- new patch
---
 drivers/usb/storage/datafab.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/storage/datafab.c b/drivers/usb/storage/datafab.c
index bbfa2398b17036f431c0692bbf794bdb01d68cdf..9ba369483c9b36c2f662749c32b=
f81b525ae897f 100644
--- a/drivers/usb/storage/datafab.c
+++ b/drivers/usb/storage/datafab.c
@@ -319,7 +319,7 @@ static int datafab_determine_lun(struct us_data *us,
 	//
 	// There might be a better way of doing this?
=20
-	static unsigned char scommand[8] =3D { 0, 1, 0, 0, 0, 0xa0, 0xec, 1 };
+	static const unsigned char scommand[8] =3D { 0, 1, 0, 0, 0, 0xa0, 0xec, 1=
 };
 	unsigned char *command =3D us->iobuf;
 	unsigned char *buf;
 	int count =3D 0, rc;
@@ -384,7 +384,7 @@ static int datafab_id_device(struct us_data *us,
 	// to the ATA spec, 'Sector Count' isn't used but the Windows driver
 	// sets this bit so we do too...
 	//
-	static unsigned char scommand[8] =3D { 0, 1, 0, 0, 0, 0xa0, 0xec, 1 };
+	static const unsigned char scommand[8] =3D { 0, 1, 0, 0, 0, 0xa0, 0xec, 1=
 };
 	unsigned char *command =3D us->iobuf;
 	unsigned char *reply;
 	int rc;
@@ -437,16 +437,16 @@ static int datafab_handle_mode_sense(struct us_data *=
us,
 				     struct scsi_cmnd * srb,=20
 				     int sense_6)
 {
-	static unsigned char rw_err_page[12] =3D {
+	static const unsigned char rw_err_page[12] =3D {
 		0x1, 0xA, 0x21, 1, 0, 0, 0, 0, 1, 0, 0, 0
 	};
-	static unsigned char cache_page[12] =3D {
+	static const unsigned char cache_page[12] =3D {
 		0x8, 0xA, 0x1, 0, 0, 0, 0, 0, 0, 0, 0, 0
 	};
-	static unsigned char rbac_page[12] =3D {
+	static const unsigned char rbac_page[12] =3D {
 		0x1B, 0xA, 0, 0x81, 0, 0, 0, 0, 0, 0, 0, 0
 	};
-	static unsigned char timer_page[8] =3D {
+	static const unsigned char timer_page[8] =3D {
 		0x1C, 0x6, 0, 0, 0, 0
 	};
 	unsigned char pc, page_code;
@@ -550,7 +550,7 @@ static int datafab_transport(struct scsi_cmnd *srb, str=
uct us_data *us)
 	int rc;
 	unsigned long block, blocks;
 	unsigned char *ptr =3D us->iobuf;
-	static unsigned char inquiry_reply[8] =3D {
+	static const unsigned char inquiry_reply[8] =3D {
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
ien.net/d/msgid/usb-storage/20250228-misc-const-v3-4-09b417ded9c4%40posteo.=
net.
