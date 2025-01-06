Return-Path: <usb-storage+bncBDUNBGN3R4KRBS6W525QMGQEBTGQYBQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AC5A02288
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:07:09 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-216266cc0acsf180644415ad.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:07:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736158028; cv=pass;
        d=google.com; s=arc-20240605;
        b=la5EbzhWeL+x7gJT/CnvOyQsh14D7LKggOIDCPGajbTHeQN7vyOEJ4hHUjaGiv2WkA
         BEY+WsVOBYsry4BRmMdSifxIR4jW/fx+raYqMtnbQw2+2FFUSyit6qLmlFZ+oRlIAUFr
         cXs8/3bY57rLC3LhCqroZ2SrjBIMH+JRJFFzzefrWMxmpN6N7GZtbO9W6mh/OhEWZEbs
         YDDAZMDW0rgg9C1ueDO+JiDSUODrgVEVOAnQ4vGFKpaJxiWnlA2rXGoYFLiubMjIFtdY
         MDX2mwt1J56Nwv6ZiEIh4UJ3LXoGDnHNRQfTWG6yz/////wXB5/rAGu1fXczXniryaUS
         voqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YkGlFPvVbJKUdzU0D093Nr6Ha/4Tmx3neclSo9GKfRA=;
        fh=Sog6KTRvaKMmdsPepuoSs8STLTwWjPB3jQRizovB+F8=;
        b=YjIUZeMXpfhETTTTbEXAJrT/6a/Mp9glPDQrC7rNyB/XJ4/NSdESkEaC6Br1LzH9Bd
         ZoFR14OBScRrvmS4KCqSLlW1irQRQQfmOFhrHLdG/4a6umGLIeBNJl79n+VCJq1Wr5RP
         SJud9HfQv8TQuC63rogPeERp6eFu5UJObqul3VzFbbT/HrUT1WrWrh+hJ0BwTYT8aWPg
         wj5SQZaBrMU4BvcUrWQEuFsjD3WcvyEvVdePwsB+GGuFSpxMT0E6Zo3CdsgcRn63kvMz
         JaWMzTH5fm85d0uBV3wmb8/7POeIoFWpvg93gtYIgmwVlczanI66XDfg/AAOsh2bZ4Lf
         CxJA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=gDd8lJdR;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736158028; x=1736762828; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YkGlFPvVbJKUdzU0D093Nr6Ha/4Tmx3neclSo9GKfRA=;
        b=PplLRZAkHI7F1jDQIxwWjWAOyJFY+Gy916WYqlaLXkXcPTorZo9GdcZn7ZJ3Q75PIl
         U1e504EMlZwlqWFQfIvNmaDxVWrkx6u+nptvpZCA5IB9xuzyzKeuUKPTlpGHhC2gQ9g9
         QMmgTla8Jz6kCG/InFZYxT9fjf3f5ssgUpEFc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736158028; x=1736762828;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YkGlFPvVbJKUdzU0D093Nr6Ha/4Tmx3neclSo9GKfRA=;
        b=JM9tIyH4DhhpUJKGVitQnYsOMdd7KW+9BUeh8V3YI53v2fyQx27UTeaGxelklYSe+B
         HrAnpQucL8zRNcS9IyoXQEVeaZfTTGtSGuSgy7l162LYaG2l5K2bLZ67u8bWOJl3XR7y
         bEEk8wWjseBoVX93DcDoma2ZJq+1yDlSEyDq0ji9v9P6gy+FiztHyo9Fiwod37DB8vOc
         U2xXBVw0TMWnEQOnwvr+dXBKhq9INVU4SCcG2PwVOhdoDgYETZQRfr4XGO7nSwebkPLQ
         UHj09rMtLigAzkzTJW+A9koaR40uwDx8QpuyvUAlmHiKf9rYo3JxefrDS8ua+4sNIgBX
         Pz7A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV9Qmlc5vzeSDWgsHKeLHJoBGUnP+7QsRNuTR510EyFfSyN8y2t2++1+r/sv/aSdG6Z0k4+AA==@lfdr.de
X-Gm-Message-State: AOJu0Yw39d/CFk/oU+8ynvwMEif8DD7P3gykcdkgTB9jUKBe0/X7zb+S
	B4uBTPHiZXb2CQRKymZU885exJjVFOExGaohHRP3Fbslo+kP2fSYD2cuWGazD2E=
X-Google-Smtp-Source: AGHT+IFn0yGkwFCT5v/GLNaDlyxosOE4Bouf0QsA3cM0NwaKlNjyje4QdhxKkQ3RET5g6cKuCllQwg==
X-Received: by 2002:a05:6a20:2451:b0:1e0:cc01:43da with SMTP id adf61e73a8af0-1e5e1c452c0mr84935481637.0.1736158027962;
        Mon, 06 Jan 2025 02:07:07 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:88cc:0:b0:72a:aad1:c8bc with SMTP id d2e1a72fcca58-72aaad1cdbals5701311b3a.2.-pod-prod-00-us;
 Mon, 06 Jan 2025 02:07:07 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVMDJZ4woc48fDRw6WFRTTDWaTUh5cwNj2nj0rQskJ/upB5IjiYz2jtSLk0/ZUJF/0J2DYw30eNBf7hmA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:4320:b0:1e6:50a0:f982 with SMTP id adf61e73a8af0-1e650a0fa30mr35593422637.20.1736158026746;
        Mon, 06 Jan 2025 02:07:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736158026; cv=none;
        d=google.com; s=arc-20240605;
        b=RHQ3J1m3B16iwMlkHRC1KCJ64C8cR7xumw8qaeQqo9gzO2MbBdZEBw6TJimOOtt4jS
         F932woJ6v4ajePUSMSgSVsC+Mu09dW4odaWdt+TDNw969mD2S1X3BSaw40XVXAeigeDW
         7xPgHHXYSJ8URAbIlLnoEyPeMJ49Mc6gv/Cf/9/sBM/3YF/365Vu2L1HXHzpbkSDa4Ak
         KSiJOgAMeKYgtq+7LiQ/KWmpRR1QJhoPW37iX4ZDCwkPf8Jo4Jq5WRnJ4LwHjS6L1sYH
         qwUF+1TPL37zEtkXyRwC/c+Bi8X+OD1oey3tpoZFIrXADGD2Abaan7CfJ6e8Z2Z2y+3D
         g24A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GBHr+r0gFMC9Q2LFFRVxWSRq/duhK3fuTGmy1XB+hDM=;
        fh=lWd3gkC8mMNZNBBVD9g3TB40i3tO1HoQaqb3EWMImUw=;
        b=EniTUfEdDjcyVj27BQUcwkbiFmieNpiUL+VVCQ3JS0uavbupO+bxLqtHx1bI7HMjVx
         JtYn7CRwaYy4SFKgerRYtmcNGwLPC7btT0R6xoNH+p58eSb84aOWOO0Ruy0gEWNNcF9K
         csMN1qoNKGMdi0saeR9mg9HY9b8Fahvz+MLsBQfwkH5HyWAb4T/snITop0j+7ITQjbuU
         j+VFjjlKTAhkJzcpN+WuJLeZGD9vKHdOkXJEYwMdKWThty4oA4NjmJ+SJpeCnv8pTjIs
         L0lGpCHVhrvyhopM+k5F7Nrop5JG6FpevWmJKmUJd11NqnoJHG8hSYw47E4K1SxY6X4K
         ysCQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=gDd8lJdR;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-842ff8a06dfsi416164a12.815.2025.01.06.02.07.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 02:07:06 -0800 (PST)
Received-SPF: none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-db6b-99e8-3feb-3b4e.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:db6b:99e8:3feb:3b4e] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
	id 1tUk0m-00000000nX2-0QoC;
	Mon, 06 Jan 2025 10:07:04 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	nbd@other.debian.org,
	virtualization@lists.linux.dev,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 06/10] virtio_blk: use queue_limits_commit_update_frozen
 in cache_type_store
Date: Mon,  6 Jan 2025 11:06:19 +0100
Message-ID: <20250106100645.850445-7-hch@lst.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250106100645.850445-1-hch@lst.de>
References: <20250106100645.850445-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=gDd8lJdR;
       spf=none (google.com: batv+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+41f3ef30789274237cd7+7806+infradead.org+hch@bombadil.srs.infradead.org
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

So far cache_type_store didn't freeze the queue, fix that by using the
queue_limits_commit_update_frozen helper.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/block/virtio_blk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 0a987f195630..bbaa26b523b8 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -1105,7 +1105,7 @@ cache_type_store(struct device *dev, struct device_attribute *attr,
 		lim.features |= BLK_FEAT_WRITE_CACHE;
 	else
 		lim.features &= ~BLK_FEAT_WRITE_CACHE;
-	i = queue_limits_commit_update(disk->queue, &lim);
+	i = queue_limits_commit_update_frozen(disk->queue, &lim);
 	if (i)
 		return i;
 	return count;
-- 
2.45.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106100645.850445-7-hch%40lst.de.
