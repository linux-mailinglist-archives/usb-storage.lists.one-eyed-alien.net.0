Return-Path: <usb-storage+bncBAABBGFI5XCAMGQETBI7XYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A92B22AED
	for <lists+usb-storage@lfdr.de>; Tue, 12 Aug 2025 16:47:54 +0200 (CEST)
Received: by mail-yb1-xb48.google.com with SMTP id 3f1490d57ef6-e90697d44e4sf2912038276.2
        for <lists+usb-storage@lfdr.de>; Tue, 12 Aug 2025 07:47:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755010073; cv=pass;
        d=google.com; s=arc-20240605;
        b=fXCCr+pVuRPsklmvAqsNviUrxMLgTi0OIecyPsQv+sgMoZyHmB8PwFjnW0IWQ0MgCL
         fvpZUX6kORmyVkzevp7gRnuCn/Ov7Efmvne4+Y33T2pWGPYNTMna43abno5bfhREbZ4K
         APrTNek7eQScJMcnY/34lDBiP4CrOEa/3ARQE688pWtiGIRyfA+ncphsMSAFIWU7xR7O
         wGm9YilFqNPXHB7zPU3IjOl2ESxshKY+VSzBCqu/GtFz6CEmHqz7Q8/WzEwcmpS+hsHm
         ZUCUYP/U6Q/5zaH/kk8NaAhWvGH+4K7xK8VzXtP0Zmp6DhZorm+bfGq8JOiwy2DiHjG7
         8cKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=CauJYWLOJP4thxfLhvDGqKx+vV9oYZsTMqvfD/G7cyU=;
        fh=PO+jWvJ7lVI25NEFYh2Ens0O/3kpzBrAgHq/CPQAgO0=;
        b=kWaplk561Tj5iUB0ecwQi89X7qx8MI4YUdrbP3aRz0HcKITd6562uqD9D1uJ2n2mUG
         NfhPH+ytqymM9/wCvMhutZ6qb5ApJv7WOC4BgWmlVlf6iNb5Fb45LIoqXpkHyfLSZ5Fc
         lq1ULzJb8eWjjzRO88VmWVYchsdHCRfXM3W0GZaF+HE+uiUJQFoJ5P4X/jU3/KIiuUa4
         dtpSnUm/OJcy0zASt5wZbhX8Ih9Z/S4HbIMaz6WkC7rXVVMrNN79N4mtOyLyeWRjLIRn
         Wf4nSu+aSbMyHxPuuNi3ZPFXN0ojvhdXO6tVVanb/AgzMSOe4IUWQbxfj/Z5FXKIpMBQ
         wtAg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=J7Hhq1Md;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ac as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755010073; x=1755614873; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=CauJYWLOJP4thxfLhvDGqKx+vV9oYZsTMqvfD/G7cyU=;
        b=l0c9NNlF5X3rmtYfq6FhB4ouBT69HfozgVle7JkZGYaEYxYlvs6HmOArqL6df6uRtG
         SQo7V72RHYIoDIB/ytkHiQHRx4INTDWQGhOu8u3/SQ+i9n2diI+WjJe8GG6hf0WpLoAS
         vyjdo8P4IKsQVuDJD7uEi5amHE7qZXWTun9VA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755010073; x=1755614873;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CauJYWLOJP4thxfLhvDGqKx+vV9oYZsTMqvfD/G7cyU=;
        b=aSMYWfpA7QD/pFw+xRCgbGXVPiprCbNEdX8urdlbxCwF1Qj1RrRva0B5B5RR3RykLO
         mqnWUEGIb6+4B0aAHYNb0wtRs0qOfMnTwY/oBpk5m5Bn6OLdSBKVyrY0fX3bAO6HHIvj
         oV5dTubKH/CJAeENx2TBJ8z0Crvu3MFoQ3ibmaLQJ503pzEuE/o0ygTnVpckHNWNgNji
         oK2X5uq64HQJ0KfzsF/4mfe0SULA9oRUzN6Zq8yznvwpx8DqnXrJ5wl5BcSjCWrF9PEF
         cyf/q88bV2mb5IOl7AaU5uzGg5xbOqx8HWEIDFkz+ZkkzO4Ro0O0ZcZgUbZw35NL2A1x
         OxHA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXvSdRcRqEtbLmUaBi4+dZr/O175fLwa1zvZfpx4fscLcXkxDUuSdSTvt+yykewszeg35NdYA==@lfdr.de
X-Gm-Message-State: AOJu0YwVCx4cJRTU7O2jVNAFfAH0v27mw1SnWW5iKKXKyn5CSBAME848
	g5GpfA2KdlMWfJAhYbiG4bT85e3FE08EoABv70cxHi6lRBcg1BcsK76K+Goy1t+L560=
X-Google-Smtp-Source: AGHT+IGBp0jtATzNlg8UW68Rc6Z9SNHqb9ZiiND4R+rUYMJNoeqlVnskaoeh/lwL4OEAPdJlclq1oA==
X-Received: by 2002:a05:6902:3485:b0:e8f:d7ca:d1cf with SMTP id 3f1490d57ef6-e917a1b6157mr3539603276.8.1755010072714;
        Tue, 12 Aug 2025 07:47:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfwUJ5Vb+ZNDC4euYVeYQsoPC7L+jYEy0WjmuK6CzJMVA==
Received: by 2002:a25:b21a:0:b0:e90:6611:9e30 with SMTP id 3f1490d57ef6-e906611b885ls2270178276.0.-pod-prod-02-us;
 Tue, 12 Aug 2025 07:47:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV4Ltw6uIudTGkAVmbcWA51aupYZpBkuzHCTiI/bKn5xHSamt6UZWoBw4gpedKmIt7+eVDo/vEXrPQ6ww==@lists.one-eyed-alien.net
X-Received: by 2002:a05:690c:23c1:b0:71c:1a46:48c4 with SMTP id 00721157ae682-71c42a58ed7mr61948627b3.28.1755010072099;
        Tue, 12 Aug 2025 07:47:52 -0700 (PDT)
Received: by 2002:a05:620a:3886:b0:7c5:50d5:7703 with SMTP id af79cd13be357-7e822ccd17bms85a;
        Tue, 12 Aug 2025 07:44:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUtl6mi1YMC1gOz4D6LUi29ulVDUw1QBhn/LvPAtVa3DeeFjHKi25En5WBwaI6LDs04FaQ7j18G7LhROw==@lists.one-eyed-alien.net
X-Received: by 2002:ac8:5f49:0:b0:4b0:80c7:ba32 with SMTP id d75a77b69052e-4b0ecc728d0mr57803811cf.38.1755009854481;
        Tue, 12 Aug 2025 07:44:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755009854; cv=none;
        d=google.com; s=arc-20240605;
        b=Vpw5CXW5x/EOtGn8HIfhTLZnpiqfdsv7iX9efN2q7EHBx04V89w0/FmD698KtytB8E
         fpkFH8xZa85lNUpEMzb8G3O4ZwGSjS9S0/ai+FfAEkrSEvxOY4dPMxwdFY01L/59zPDa
         80J5VJFTUukQECi4MlKpiRGcsb0ZwCYXspmcw5Po/KqRqiXDFfzexNC+JJg530hgivql
         xKMyjHyvSgT23mBglwkHRqoVZO+BcXw9x33KmX4Tgqm+3NW7Op1o3wN0cz29LyAFey8M
         ql5DKcyZHgVsBiKe3SY0LjXMrJBhVAg/MOzcnHSwipF8VnOWjJD37Khw6KClInNHml2s
         NWeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YTqnhR6tyqtUkbvKNDEAKenG6XgSBtu4zIxOIgfHtBM=;
        fh=zjuZudG/84AY9U5EMM1K1kqQyj28sh8X2vByyQPlJ8s=;
        b=YlHeYGCA0LEgbUyyEz1SrYSlxuO8QSBQpNy5j9QaeOlTego0rENbBjkBZgWunrfDTO
         7rG/2Aqb4A/72iV8QMEldwSOa9IauyuYgA/5DnzoQx5mL1zDa5rAvQpaZrw8HiRJ3P4g
         LTQjuEpVnvyP/xtoems/R6TB8bgSbM6illzM+CXANBOiN5XlmclyChZNMNauXFkHdmor
         qJYa2lMQLq9LXzsZiAG8gZvpP97x5T9WU9xNMtC+iImN4o+WJmKBgEGSE1qY+kuEQ7oi
         7uQ6EeNkYHMZIasFOZXtk3+2GiOdMdMgVqk3rMVyT0k2uE6/8ACp2xnRea8ui64pE29p
         8IEA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=J7Hhq1Md;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ac as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com. [2001:41d0:1004:224b::ac])
        by mx.google.com with ESMTPS id d75a77b69052e-4b0c85a6d01si33743541cf.537.2025.08.12.07.44.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 07:44:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ac as permitted sender) client-ip=2001:41d0:1004:224b::ac;
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thorsten Blum <thorsten.blum@linux.dev>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] usb: storage: realtek_cr: Simplify rts51x_bulk_transport()
Date: Tue, 12 Aug 2025 16:43:58 +0200
Message-ID: <20250812144358.122154-1-thorsten.blum@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=J7Hhq1Md;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ac
 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

Change the function parameter 'buf_len' from 'int' to 'unsigned int' and
only update the local variable 'residue' if needed.

Update the rts51x_read_status() function signature accordingly.

Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
---
 drivers/usb/storage/realtek_cr.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 7dea28c2b8ee..8a4d7c0f2662 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -199,7 +199,8 @@ static const struct us_unusual_dev realtek_cr_unusual_dev_list[] = {
 #undef UNUSUAL_DEV
 
 static int rts51x_bulk_transport(struct us_data *us, u8 lun,
-				 u8 *cmd, int cmd_len, u8 *buf, int buf_len,
+				 u8 *cmd, int cmd_len, u8 *buf,
+				 unsigned int buf_len,
 				 enum dma_data_direction dir, int *act_len)
 {
 	struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *)us->iobuf;
@@ -260,8 +261,8 @@ static int rts51x_bulk_transport(struct us_data *us, u8 lun,
 	 * try to compute the actual residue, based on how much data
 	 * was really transferred and what the device tells us
 	 */
-	if (residue)
-		residue = residue < buf_len ? residue : buf_len;
+	if (residue > buf_len)
+		residue = buf_len;
 
 	if (act_len)
 		*act_len = buf_len - residue;
@@ -417,7 +418,7 @@ static int rts51x_write_mem(struct us_data *us, u16 addr, u8 *data, u16 len)
 }
 
 static int rts51x_read_status(struct us_data *us,
-			      u8 lun, u8 *status, int len, int *actlen)
+			      u8 lun, u8 *status, unsigned int len, int *actlen)
 {
 	int retval;
 	u8 cmnd[12] = { 0 };
-- 
2.50.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250812144358.122154-1-thorsten.blum%40linux.dev.
