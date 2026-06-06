#!/usr/bin/env python3
import os
import numpy as np
import matplotlib.pyplot as plt

def generate_acwr_plot(output_path="vocal_acwr_fatigue_chart.png"):
    print("🚀 Compiling Vocal ACWR Engine Fatigue Tracking Chart...")
    rows = np.arange(2100, 3300)
    acwr = np.zeros_like(rows, dtype=float)

    for i, r in enumerate(rows):
        if r < 2186:
            acwr[i] = 1.0 + np.random.normal(0, 0.04)
        elif r >= 2186 and r < 2233:
            acwr[i] = 1.0 + (r - 2186) * 0.01 + np.random.normal(0, 0.03)
        elif r >= 2233 and r < 3151:
            acwr[i] = 1.46 + (r - 2233) * 0.0001 + np.random.normal(0, 0.04)
        else:
            acwr[i] = 1.72 + np.random.normal(0, 0.06)

    plt.figure(figsize=(11, 5.5))
    plt.plot(rows, acwr, color='#1f77b4', linewidth=2, label='Simulated ACWR Score')
    plt.axhline(y=1.5, color='red', linestyle='--', linewidth=1.5, label='Danger Zone Boundary (1.50)')
    plt.axvline(x=2186, color='orange', linestyle=':', linewidth=1.5, label='Region 8 Onset (Row 2186)')
    plt.axvline(x=2233, color='purple', linestyle='-.', linewidth=1.5, label='Algorithmic Warning (Row 2233)')
    plt.axvline(x=3151, color='black', linestyle='-', linewidth=2, label='System Breakdown (Row 3151)')

    plt.text(2245, 1.56, 'Predictive Lead Active\n(918-Step Buffer Window)', color='purple', fontsize=9.5, fontweight='bold')
    plt.title("Vocal ACWR Engine Time-Series Analytics")
    plt.xlabel("Chant Row Timeline Index (Steps)")
    plt.ylabel("Workload Stress Ratio")
    plt.ylim(0.7, 2.1)
    plt.grid(True, alpha=0.3)
    plt.legend(loc='upper left')
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()
    print(f"✅ Success! ACWR Chart written to: {output_path}")

def generate_short_circuit_plot(output_path="articulatory_short_circuit_chart.png"):
    print("🚀 Compiling Articulatory Short-Circuit Anomaly Chart...")
    speed_axis = np.array([5, 8.5, 10, 14.2, 18, 21.5, 25])
    mahaprana_integrity = np.array([35.0, 42.0, 72.0, 88.0, 95.0, 100.0, 100.0])
    model_error_rate = np.array([32.4, 24.8, 15.2, 5.1, 3.4, 2.1, 1.8])

    fig, ax1 = plt.subplots(figsize=(11, 5.5))
    color = '#2ca02c'
    ax1.set_xlabel('Total Chanting Performance Execution Window (Minutes)')
    ax1.set_ylabel('Mahāprāṇa Articulatory Integrity (%)', color=color)
    line1 = ax1.plot(speed_axis, mahaprana_integrity, color=color, marker='o', linewidth=2.5, label='Phonetic Integrity')
    ax1.tick_params(axis='y', labelcolor=color)
    ax1.grid(True, alpha=0.2)

    ax2 = ax1.twinx()
    color = '#d62728'
    ax2.set_ylabel('Model Calculation Variance Error (%)', color=color)
    line2 = ax2.plot(speed_axis, model_error_rate, color=color, marker='s', linewidth=2.5, linestyle='--', label='Model Discrepancy')
    ax2.tick_params(axis='y', labelcolor=color)

    ax1.axvspan(5, 10, color='red', alpha=0.08, label='Short-Circuit Failure Window (<10m)')
    plt.title("The Articulatory Short-Circuit Anomaly Curve")
    lines = line1 + line2
    labels = [l.get_label() for l in lines]
    ax1.legend(lines, labels, loc='lower left')
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()
    print(f"✅ Success! Short-Circuit Chart written to: {output_path}")

if __name__ == '__main__':
    generate_acwr_plot()
    generate_short_circuit_plot()
