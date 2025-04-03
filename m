Return-Path: <usb-storage+bncBCTPRFE7TUKRBKMZXO7QMGQEERXVLWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B168A7A8F7
	for <lists+usb-storage@lfdr.de>; Thu,  3 Apr 2025 20:00:11 +0200 (CEST)
Received: by mail-wm1-x347.google.com with SMTP id 5b1f17b1804b1-43d209dc2d3sf6815165e9.3
        for <lists+usb-storage@lfdr.de>; Thu, 03 Apr 2025 11:00:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1743703211; cv=pass;
        d=google.com; s=arc-20240605;
        b=XRF8ablzTzZTX3JCD9GwY/lM3wTlGQOBM8erTlRezko0c6rlUnvmQpktjdmBWGZ9Gy
         7YFgw++McXAcleFw4AyvZgnldxpyfjr93PtGo37DhAv6ykwMCJAgZahxEQfFkCEh6wMv
         JG9D1uGqw0j/decBipMCJf1Yk5m9nyRwiH4WyD5L3Z4bYlh9lHXnKqv5i6EbJ+gF5b1Z
         YQWfZ7wu3rXusyKTpqO3pNSB27ev7+XQOJmCnb88nq1TFJCH3qp4sIQHY7Y4npeBSCjy
         bcODg69hrp0BodAmQBZQ/blcD31O23e/o0jchD6KvtR7QJsL6lDUylHw/06uFIF3/QqR
         l44Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=d4ui4auz2kesWXO9eKdqUks42r2+wqf+1Fb8/C6F81g=;
        fh=IgWJI0ZoEq62NUzNdbgePwhm5KL5adO0zQk/Xlkz5bc=;
        b=FbkD5rFAc8NA/3+YNLy1DEDnILVkqIfSBeiwm3A0CkWY1IN0vLWve8Rp/BAodktVHF
         pSwdLRi0LWYZYgymltS3CUkHNQFbRTO1gKFo0JT8y+8A4c7i4auoWkY/XHaxCLqOHLuY
         pNBpyB6eh7h0Gm3aALDQ+sBq4fmlZI1Ke8AkL3LViz+XwG8KJWiQ0qEkc4jnsC9PUTdE
         Jg83cTVdyCygPismMbgDnQKsI4u+BNizG6OFE4IiKnZQhV4RRThyFxisEG0O8KMxpKjG
         IKsJmrcH3+9imxChZf+bBZ54jSASn0ZSojTBHRYxWMwoPvJiGG6mpeo0q3Ak/8km54QN
         oulg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=phDOw6DG;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=VjmTbNd4;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.223.131 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1743703211; x=1744308011; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d4ui4auz2kesWXO9eKdqUks42r2+wqf+1Fb8/C6F81g=;
        b=SwhmbTdXcqG5dmqcJjXET67hHOafzNkcb+oCxpDPlj7RWSRWimmvwRrOtqaMuKWlb+
         J+jPeKZpIheSLhkpw8yNMazHLAV96lqd0nYYAsXs3Fjitr9sjTsQ0w60wvKzZzkHqWRb
         nOdwi3E7CGuoqiNMijvD5C1Jndu3cJTizeQls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743703211; x=1744308011;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d4ui4auz2kesWXO9eKdqUks42r2+wqf+1Fb8/C6F81g=;
        b=hj7/MMY6hM7XUvQFtO1MlEtDblJZrOOmuRRDG1D7zVWLXlC4FjdJujce8A9uxTjCYS
         9B3RCjZKdOagsTViC85OWgqZ9uT3qsRyK12gx7LBh/9DjXR/BLaYJqy9cEbNqxGc9mjE
         VGDfnlzmn/6GhjtasDWoo+hLRGjXmCjhD8Hty8jv/Z4w4bWCLbetpi4Hik4xFhTo7bAr
         7N12HS5qO5oa+1vDEm3c28XYVaZnis5nBXr4wdRuUNcYlF5bScotF3nwswuh+NXRjvR8
         IsUS3su37Z3dQ9M+8qkyrSVZQudwdtfNbe0d86S4JZFpgQXBJ7im2nMAAboOQaeRf8c+
         99lw==
X-Forwarded-Encrypted: i=2; AJvYcCUh7vssMhfK2Uf3KuL04hK3ynYTUYYC6NiujlZ+mZ130z8XgCnYUE4yQnDUce461rIe18Biow==@lfdr.de
X-Gm-Message-State: AOJu0Yw5TSCI/Kw9z87vhcGBCfLU8q/U4IIEldOHNl0wrA9lwWkl+KrI
	2arWd0m/U1h1gr36oqsU5YX+Jd6crBqJLgXokx2UJL8P+JSoRk4JLZapp4gKYDs=
X-Google-Smtp-Source: AGHT+IEhyH/9xqMsO2u8f3qeHh8ZjOXJHUiVCVE8Iiv7jzoTOiVG1Fi0qQr9/sRXUfKUJmkyBwvKxQ==
X-Received: by 2002:a05:600c:4449:b0:43d:526:e0ce with SMTP id 5b1f17b1804b1-43ecf9c7073mr225495e9.21.1743703210840;
        Thu, 03 Apr 2025 11:00:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=ARLLPALOVK/IKV2jfJ+rowo/lbwb6M2fqIxsvToblfB6m+9iWw==
Received: by 2002:a5d:64c3:0:b0:38d:c1e5:15ce with SMTP id ffacd0b85a97d-39c2e22cff2ls604341f8f.2.-pod-prod-03-eu;
 Thu, 03 Apr 2025 11:00:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVaQoTgVXAuIZ3bLZnAGLmDHqnSG0GDY1rAM2nVniL5qu3FGRK5KPCP1wIhTxgwxmBgIHS+MqG29SMmCQ==@lists.one-eyed-alien.net
X-Received: by 2002:a5d:584e:0:b0:391:412b:e23f with SMTP id ffacd0b85a97d-39cb35bd7d7mr210596f8f.15.1743703207488;
        Thu, 03 Apr 2025 11:00:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1743703207; cv=none;
        d=google.com; s=arc-20240605;
        b=EO3OTllqnM6kD989+8ubXp9nre30yBGjjLTDMdGcd0g0WISlu5ocHYY1VfIW7hWBOB
         59wXEbqcuzskKLsxMtDONAWIyX85tvfJkO7N1pUq0U4XROUsS6TANWdRI3sd/cu1Em3y
         OjM5+dQYy8f+28yEGMwbWUBpBmI6M98e6uJVlGJfU1+MKe4PGg7s7lIbx9hC3zf1StbK
         HkNQfclE9B3W9YYqOKFzwjo5UbrieTnSsQ2/oG4zqupdL4oVgqwkR754217Cs+Q48QOG
         FAlu11BFr9+vuQzP+op8Hou2KywOhTq9TFYgEYkj2FwTC9N9DBx3W4uNkne2ztWQlyYb
         3a6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-signature;
        bh=dvon3orrIPskieZf5OquLJhBMyt41RbJ7xKkCGtlqN4=;
        fh=FHS/1IA/Rui5b89IVNbdbC5fjK8G34SrbYniH6e1eVY=;
        b=J7nI0skf0FFfJ01Kcx90A0qOE47B/f6FWfNPPUb1S4Zj4DIw/paCpJrvxswuGzPPFY
         nx+aTj66T4IWzpfxZzycsbxMYXBR++JjRvHjrhTSEGOKNCjBwISQJ219rMLf+XQnpEbb
         j68+uYvlm7ze9ENP3VSvEj6dhCs+yVeYGgB5KcYiFlCFCsWVPYCfXcQGaeL6hZvlkMJn
         w2xu9Wyk+nYLxdZMDsghyOhVrXCYuDA+1xQeoAgoPpCXY9t9gz4GcEXV7poNEWZUN8K2
         6xBk9UcS58+eBI6UrxfAWJcpt6EevdwNcf+xtSutSXQMBgKMyjL15KQh/F+0vSTWdtJx
         DREQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=phDOw6DG;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=VjmTbNd4;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.223.131 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.223.131])
        by mx.google.com with ESMTPS id ffacd0b85a97d-39c30228c70si1323136f8f.371.2025.04.03.11.00.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 11:00:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 195.135.223.131 as permitted sender) client-ip=195.135.223.131;
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id DAA8C1F385;
	Thu,  3 Apr 2025 18:00:06 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id AE5DB13A2C;
	Thu,  3 Apr 2025 18:00:06 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id IHnSKKbM7metFwAAD6G6ig
	(envelope-from <oneukum@suse.com>); Thu, 03 Apr 2025 18:00:06 +0000
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Oliver Neukum <oneukum@suse.com>,
	stable@vger.kernel.org
Subject: [usb-storage] [PATCH] USB: storage: quirk for ADATA Portable HDD CH94
Date: Thu,  3 Apr 2025 19:59:45 +0200
Message-ID: <20250403180004.343133-1-oneukum@suse.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Spam-Score: -2.80
X-Spamd-Result: default: False [-2.80 / 50.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_MISSING_CHARSET(0.50)[];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	DKIM_SIGNED(0.00)[suse.com:s=susede1];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,suse.com:mid,suse.com:email];
	RCVD_TLS_ALL(0.00)[]
X-Spam-Flag: NO
X-Spam-Level: 
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=phDOw6DG;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=VjmTbNd4;       spf=pass
 (google.com: domain of oneukum@suse.com designates 195.135.223.131 as
 permitted sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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

Version 1.60 specifically needs this quirk.
Version 2.00 is known good.

Cc: stable@vger.kernel.org
Signed-off-by: Oliver Neukum <oneukum@suse.com>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1f8c9b16a0fb..d460d71b4257 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -83,6 +83,13 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_LUNS),
 
+/* Reported-by: Oliver Neukum <oneukum@suse.com> */
+UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
+		"ADATA",
+		"Portable HDD CH94",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_NO_ATA_1X),
+
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",
-- 
2.49.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250403180004.343133-1-oneukum%40suse.com.
