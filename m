Return-Path: <usb-storage+bncBAABBOWS666QMGQEQST7MGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9F4A4453B
	for <lists+usb-storage@lfdr.de>; Tue, 25 Feb 2025 17:01:00 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id af79cd13be357-7c0a70510d2sf153693285a.3
        for <lists+usb-storage@lfdr.de>; Tue, 25 Feb 2025 08:01:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740499259; cv=pass;
        d=google.com; s=arc-20240605;
        b=ScWAGCeLNY0jqKAWxFsoRW2ObnAzYX/s8EoMPTZPqBnWpwsYnyCxi0Ba+KC6InG7Zh
         s1qfA0KIAwjJofiGzE938hO2O7+8Ej5jcw+XbEsWoAK0GcAMllBdC03+1ABlUTMvLFLC
         pjKntUyGaWJSBkQLmRBSXjLUc/Xw13i3xbfupLZGLvSShrJptx6m/uELaIlOXFk28kmg
         ZDKSYt6zWjpe48D7UgFE6FuGEF2kR3oIOge8dWttOKApYNRF5bl2mjta5465hARrtAD6
         UueVZIOvwL9KTqoIL+GddBJB190Ly0Jjh4jDxBlEg21HQIXDbW7x1QBaZeKuy0lsPfve
         cboQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :dkim-signature;
        bh=rIFj/FUnNmgOJhTZ+0tcDIiFGHRy4+aTct15a07GOis=;
        fh=qMoajN1jur3MBGwbt9KnJzRdVB40pHRyrh/OkaRgpfY=;
        b=QlsJJdKRl1mmmVGzPRZK8o3aev3ZKxNqkzlg9gs8nkS03G9zKonA3QnD7bJTHDHzf8
         vvyMwrMJor3iBlN7PFVSWajOy9/5xw3P2iGPQl8GP0iqTBkiNvpZ6BD02A8q/lA1ejcU
         d7ltJTO5tLaK0CTvJYz7qQ+AKHt/qGFAnTSkzG79PqAD7Tv2mKokX3pYkXS5WXMef5uG
         xT9haDMmlhsd3dxwYZRlmiMLk3J3D+f20vVR8vJzfz/NcD++RD88dPYB1uGETeIVFinq
         BlYRDsBl+47cRrJ72RbmPFZEeXVkszJZmWVg5KIs52gUQaaEpMwplHOxkyunewXAaUUc
         lTJQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SlcPOlQ1;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2600:3c04::f03c:95ff:fe5e:7468 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740499259; x=1741104059; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:message-id
         :content-transfer-encoding:mime-version:subject:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rIFj/FUnNmgOJhTZ+0tcDIiFGHRy4+aTct15a07GOis=;
        b=Y09ry2TtEEU5Y3IdtA4Unj2blf8u3CqnCLjf69p0OewJEtBbKvPuwocFPaUg5fDdQy
         B8yk/93/TZpnHEKupKMne3x1SRC5284rzS7BK7g4mafzkQGeDkG3xPaXep0mmUnyIa7F
         74eHfJSwojbsyR6mSNI6vxr5zJT9I/29EhuyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740499259; x=1741104059;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:message-id
         :content-transfer-encoding:mime-version:subject:date:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rIFj/FUnNmgOJhTZ+0tcDIiFGHRy4+aTct15a07GOis=;
        b=XlPKCBrzWd2fpdieQ8mcK+SJ+WrdnKysxhEBdNAGYNMWICjKY6geqCE9PlKQcz3fWp
         6sWdYqlxNZP1s8G9gJq8cON9acFsNL/7pUz5428I0WyhCdjVI1TbR+jGO81lKiS6hGLi
         kHJlEPyldNCym6j+w0lUzwjyeLbIqL5NdvW4TQLJ/Vre7T1bkos/nn/rXSuRd+YahOvM
         LL7sQTZ7kl5m32bbss9MDW9LDcXiXMRAnXXc4cawvb9femvSVKlg5cJkDcKSADcsAvMR
         8wSFsy0+1ZrVMvhX/0LBuxqCvSzTg68YjoYpYWwakKSs3iYIBd40x6VGKWiWbfX/ofkp
         9lUg==
X-Forwarded-Encrypted: i=2; AJvYcCUVnwtVVrHg3K6ejQyyeZcYDozRSJybBYl6S8mvGwVFq1Gx5livEuxpy8Koy+IXt5Joq0e/Lw==@lfdr.de
X-Gm-Message-State: AOJu0YzMaSSgA63sAgzzi4OvsqDrDvncTCxe+Cmb4W/tGCZUBYf9JCQt
	ktIl0mOSg2C3ZFT/y4QgZtg2VPatwqkTCRI0tILXT4y49Ly8xDFtDac++pO7y6Q=
X-Google-Smtp-Source: AGHT+IHgbqILaE5v3Mbx+/Z89+SHWUwNw+gdbRl+HkUgIEHA8xpEkKGmmLWuIIIIYPWmseZxFPl9dA==
X-Received: by 2002:ac8:7d0c:0:b0:472:1812:23da with SMTP id d75a77b69052e-4722297eb3bmr89280641cf.11.1740499258960;
        Tue, 25 Feb 2025 08:00:58 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVH0xg0RiSCrKMD9Th9pq/h0pfcHjOrAg1k5QfJvXwCuGw==
Received: by 2002:a05:622a:4489:b0:472:731:a5e with SMTP id
 d75a77b69052e-4737779e155ls1187051cf.1.-pod-prod-05-us; Tue, 25 Feb 2025
 08:00:58 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWlA/slucN190kcFO76NXDpMvG5Elr00Q+Sk4roE4kymFK7YPFrt+bI6B7WJDqpwpvkkzK1oBjamAj+dg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:3185:b0:7c0:b587:9e6 with SMTP id af79cd13be357-7c23bf45280mr513819285a.43.1740499258317;
        Tue, 25 Feb 2025 08:00:58 -0800 (PST)
Received: by 2002:a05:620a:4d0e:b0:7c0:bbff:9f72 with SMTP id af79cd13be357-7c23ca7d711ms85a;
        Tue, 25 Feb 2025 04:25:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXzAFbfo0V8qOmQ9buraIXZy3yBYqmsVxN/cTvRaGbyf4C3LF8L/+7HSGb/wa4N2DlW9xMv2PhXHc5IMw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:4481:b0:7c0:a46d:fa8d with SMTP id af79cd13be357-7c23be27840mr395792285a.31.1740486310828;
        Tue, 25 Feb 2025 04:25:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740486310; cv=none;
        d=google.com; s=arc-20240605;
        b=ZHo7bqPkxOHPkvxPW4Nnt283SNl8QJKetzlMu8mGSFHIjdQ0kEV1VTBfELiKDrwiyz
         +n/vRY0sLu7J+hFmCU3FqhzmLYvvxr6zdBp/SZ7Zv0CfK5a71IvzXC/6kEawpM4fYOSB
         3aue2p8V6pnCwd4NVlSOccK6DUBDDeUMKXbeyw12B87jQdGuQzcV3Cj/kITaoCqCmvXr
         YCm0vX45EHjdGY3YD2qGo9YOBbtPLFqIEgCdRpHq/sP6rjacOYHwSxEllzM5OK7DB5i8
         gWVwzARmAdfbUsrcCzsjVm/inQ+1zfIJq68Y+tPJWBFbHBdyXzGc7AP6QYRb9ThmXwA4
         /UmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:message-id:content-transfer-encoding:mime-version
         :subject:date:from:dkim-signature;
        bh=5A0kt11ENdjm/4o8Dz0djpkHBwAgVz71DVZSxKohjOQ=;
        fh=Oha/XYQc788ERBFq+HFM3IVVxsXYJAZMXzH3Egve0w8=;
        b=eln4kAGuIyotpXlmhrs8t55J1yyPcscS3UbN8fMbaz610L0Q+k2jIw1jOiQVakMUg3
         dolaRbU4HnC0+IBbnP6AOsKqwUA0FF2x1EhChebOrAgjf66ORVZMS0tpjiqNbXEQZuqr
         Byqi1RwhPsB7mOuxzbjfKYHeON0JbvxOKminQ/XcDJPPphiYzedxnJ2jb3jA7a10r/5g
         6Qge9KYRQrUrDTNEY5pJ0i+svdzcZ7BaTKtyifz9J9VUC9EoSHDXDpjX3xNwGBRN9jUM
         tTScCIeeevitOi6FewxMHE/ljExomnRspHjtj1GLjyrExJkaJEQKmubsMuLE0M/mQFyT
         pm7A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SlcPOlQ1;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2600:3c04::f03c:95ff:fe5e:7468 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [2600:3c04::f03c:95ff:fe5e:7468])
        by mx.google.com with ESMTPS id af79cd13be357-7c23c30da92si159559285a.609.2025.02.25.04.25.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 04:25:10 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2600:3c04::f03c:95ff:fe5e:7468 as permitted sender) client-ip=2600:3c04::f03c:95ff:fe5e:7468;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9FAEC6127E;
	Tue, 25 Feb 2025 12:25:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08B6EC4CEDD;
	Tue, 25 Feb 2025 12:25:10 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E33DFC021B2;
	Tue, 25 Feb 2025 12:25:09 +0000 (UTC)
From: =?UTF-8?Q?=27J=2E_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storage_on_L?=
	=?UTF-8?Q?inux?= <usb-storage@lists.one-eyed-alien.net>
Date: Tue, 25 Feb 2025 13:25:03 +0100
Subject: [usb-storage] [PATCH] usb: storage: jumpshot: Use const for constant arrays
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20250225-misc-const-v1-1-121ff3b86437@posteo.net>
X-B4-Tracking: v=1; b=H4sIAJ+2vWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDEwND3dzM4mTd5Py84hLdVPMkk+Q0I4MU0zRLJaCGgqLUtMwKsGHRsbW
 1AOPiNc9cAAAA
X-Change-ID: 20240401-misc-const-e7b4cf20d5f9
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740486309; l=1810;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=8rz6vHhtFj67IR1PYVzJt/W+sDgjep7yfy8XQRNUyVM=;
 b=xcrvT+n6wVQZdgOquo/5oCozE3BNKpweD3XshACH5KiYMKRKGFNmqrlpzJa9go/5yaUOv/1m6
 J215lkf+nznAm3bUW8JpZvqPnlnHgmQGXmbgm/03EEUBACJssgxzOWh
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull+j.ne.posteo.net@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SlcPOlQ1;       spf=pass
 (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates
 2600:3c04::f03c:95ff:fe5e:7468 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
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

From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>

These arrays are not modified. Make them const.

Signed-off-by: J. Neusch=C3=A4fer <j.ne@posteo.net>
---
Signed-off-by: Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>
---

This change was compile-tested with ARCH=3Dpowerpc
---
 drivers/usb/storage/jumpshot.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/storage/jumpshot.c b/drivers/usb/storage/jumpshot.=
c
index 39ca84d6859122903de4e64b13e697e8b7d4ab31..089c6f8ac85fbb683cca8b03a2f=
f06c0ca776167 100644
--- a/drivers/usb/storage/jumpshot.c
+++ b/drivers/usb/storage/jumpshot.c
@@ -367,16 +367,16 @@ static int jumpshot_handle_mode_sense(struct us_data =
*us,
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
@@ -477,7 +477,7 @@ static int jumpshot_transport(struct scsi_cmnd *srb, st=
ruct us_data *us)
 	int rc;
 	unsigned long block, blocks;
 	unsigned char *ptr =3D us->iobuf;
-	static unsigned char inquiry_response[8] =3D {
+	static const unsigned char inquiry_response[8] =3D {
 		0x00, 0x80, 0x00, 0x01, 0x1F, 0x00, 0x00, 0x00
 	};
=20

---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20240401-misc-const-e7b4cf20d5f9

Best regards,
--=20
J. Neusch=C3=A4fer <j.ne@posteo.net>


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250225-misc-const-v1-1-121ff3b86437%40posteo.=
net.
